`timescale 1 ns / 1 ps

module data_anchor #(
    parameter DATA_WIDTH = 32,                   // Width of data samples
    parameter TOTAL_SAMPLES = 1024,             // Samples per memory bank
    parameter ADC_MAX_COUNT = 50,               // Max ADC cycles between samples
    parameter integer C_M_AXIS_TDATA_WIDTH = 32,
    parameter integer C_M_AXIS_START_COUNT = 32
) (
    // AXI Master Stream Interface
    input  wire m_axis_aclk,                    // AXI clock
    input  wire m_axis_aresetn,                 // AXI reset (active-low)
    output reg  m_axis_tvalid,                  // AXI data valid
    output reg  [C_M_AXIS_TDATA_WIDTH-1:0] m_axis_tdata, // AXI data
    output reg  [(C_M_AXIS_TDATA_WIDTH/8)-1:0] m_axis_tstrb, // AXI byte enable
    output reg  m_axis_tlast,                   // AXI last signal
    input  wire m_axis_tready,                  // AXI ready signal

    // ADC interface
    input  wire [DATA_WIDTH-1:0] chanel1,       // ADC channel 1 data
    input  wire chan1_rdy                       // ADC data ready signal
);

    // Internal Signals
    reg [DATA_WIDTH-1:0] memory_bank_0[0:TOTAL_SAMPLES-1]; // Memory bank 0
    reg [DATA_WIDTH-1:0] memory_bank_1[0:TOTAL_SAMPLES-1]; // Memory bank 1

    reg [9:0] write_ptr = 0;                     // Write pointer
    reg [9:0] read_ptr = 0;                      // Read pointer
    reg buffer_select = 0;                       // Select active buffer for writing (0: bank 0, 1: bank 1)
    reg buffer_ready = 0;                        // Indicates the completed buffer is ready for streaming
    reg [9:0] sample_count = 0;                  // Number of samples in the current buffer
    reg [9:0] adc_loop = 0;                      // ADC delay counter
    reg [1:0] state = 0;                         // FSM state

    // FSM States
    localparam IDLE       = 2'b00;
    localparam BUFFERING  = 2'b01;
    localparam STREAMING  = 2'b10;

    // Initialization
    always @(posedge m_axis_aclk) begin
        if (!m_axis_aresetn) begin
            state <= IDLE;
            write_ptr <= 0;
            read_ptr <= 0;
            buffer_select <= 0;
            buffer_ready <= 0;
            sample_count <= 0;
            adc_loop <= 0;
            m_axis_tvalid <= 0;
            m_axis_tdata <= 0;
            m_axis_tstrb <= {(C_M_AXIS_TDATA_WIDTH/8){1'b1}}; // Enable all bytes
            m_axis_tlast <= 0;
        end else begin
            case (state)
                IDLE: begin
                    write_ptr <= 0;
                    read_ptr <= 0;
                    buffer_select <= 0;
                    buffer_ready <= 0;
                    sample_count <= 0;
                    m_axis_tvalid <= 0;
                    m_axis_tlast <= 0;
                    state <= BUFFERING;
                end

                BUFFERING: begin
                    if (chan1_rdy) begin
                        if (adc_loop == ADC_MAX_COUNT) begin
                            // Write to the active memory bank
                            if (buffer_select == 0) begin
                                memory_bank_0[write_ptr] <= chanel1;
                            end else begin
                                memory_bank_1[write_ptr] <= chanel1;
                            end

                            // Update write pointer and sample count
                            write_ptr <= write_ptr + 1;
                            sample_count <= sample_count + 1;

                            // Reset ADC loop counter
                            adc_loop <= 0;

                            // Check if the current bank is full
                            if (write_ptr == TOTAL_SAMPLES - 1) begin
                                buffer_ready <= 1; // Mark buffer as ready for streaming
                                buffer_select <= ~buffer_select; // Swap to the other bank
                                write_ptr <= 0;
                                sample_count <= 0;
                                state <= STREAMING;
                            end
                        end else begin
                            adc_loop <= adc_loop + 1;
                        end
                    end
                end

                STREAMING: begin
                    if (buffer_ready && m_axis_tready) begin
                        // Read from the inactive memory bank
                        if (buffer_select == 0) begin
                            m_axis_tdata <= memory_bank_1[read_ptr];
                        end else begin
                            m_axis_tdata <= memory_bank_0[read_ptr];
                        end

                        m_axis_tvalid <= 1;
                        read_ptr <= read_ptr + 1;

                        // Set last signal for the final sample in the buffer
                        if (read_ptr == TOTAL_SAMPLES - 1) begin
                            m_axis_tlast <= 1;
                            buffer_ready <= 0; // Mark buffer as streamed
                            read_ptr <= 0;
                            state <= BUFFERING; // Switch back to buffering
                        end else begin
                            m_axis_tlast <= 0;
                        end
                    end else begin
                        m_axis_tvalid <= 0;
                        m_axis_tlast <= 0;
                    end
                end

                default: state <= IDLE; // Fallback state
            endcase
        end
    end

endmodule
