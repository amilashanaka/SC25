`timescale 1 ns / 1 ps

module data_anchor #(
    parameter DATA_WIDTH = 32,                // Width of data samples
    parameter TOTAL_SAMPLES = 1024,          // Number of samples to collect
    parameter ADC_MAX_COUNT = 50,            // ADC loop count for sample collection
    parameter integer C_M_AXIS_TDATA_WIDTH = 32, // AXI stream data width
    parameter integer BASE_ADDR = 32'h0000_0000, // Base address for memory
    parameter integer BUFFER_SIZE = 1024     // Size of each buffer
) (
    // AXI Master Stream Interface
    input wire m_axis_aclk,
    input wire m_axis_aresetn,
    output reg m_axis_tvalid,
    output reg [C_M_AXIS_TDATA_WIDTH-1:0] m_axis_tdata,
    output reg [(C_M_AXIS_TDATA_WIDTH/8)-1:0] m_axis_tstrb,
    output reg m_axis_tlast,
    input wire m_axis_tready,

    input wire [DATA_WIDTH-1:0] chanel1,      // ADC input data
    input wire chan1_rdy                      // ADC data ready signal
);

    // Internal signals
    reg [DATA_WIDTH-1:0] buffer [0:TOTAL_SAMPLES-1]; // Circular buffer
    reg [9:0] sample_count = 0;                     // Current sample count
    reg [DATA_WIDTH-1:0] write_addr;                // Write address in memory
    reg [1:0] active_buffer = 0;                    // Tracks active buffer (0 or 1)
    reg [1:0] state = 0;                            // State machine
    wire [31:0] base_address;                       // Base address for current buffer

    // State Encoding
    localparam IDLE = 2'b00;
    localparam BUFFERING = 2'b01;
    localparam STREAMING = 2'b10;

    // Calculate base address for active buffer
    assign base_address = BASE_ADDR + (active_buffer * BUFFER_SIZE * 4);

    // State Machine
    always @(posedge m_axis_aclk) begin
        if (!m_axis_aresetn) begin
            // Reset logic
            state <= IDLE;
            sample_count <= 0;
            write_addr <= 0;
            m_axis_tvalid <= 0;
            m_axis_tlast <= 0;
        end else begin
            case (state)
                IDLE: begin
                    sample_count <= 0;
                    write_addr <= base_address;
                    m_axis_tvalid <= 0;
                    m_axis_tlast <= 0;
                    state <= BUFFERING;
                end

                BUFFERING: begin
                    if (chan1_rdy) begin
                        // Write ADC data into the buffer
                        buffer[sample_count] <= chanel1;
                        sample_count <= sample_count + 1;

                        // Increment the write address
                        write_addr <= write_addr + 1;

                        if (sample_count == TOTAL_SAMPLES - 1) begin
                            // Switch to STREAMING when the buffer is full
                            state <= STREAMING;
                            active_buffer <= ~active_buffer; // Toggle active buffer
                        end
                    end
                end

                STREAMING: begin
                    if (m_axis_tready) begin
                        // Stream data from the buffer via AXI DMA
                        m_axis_tdata <= buffer[sample_count];
                        m_axis_tvalid <= 1;
                        m_axis_tstrb <= {C_M_AXIS_TDATA_WIDTH/8{1'b1}};
                        m_axis_tlast <= (sample_count == TOTAL_SAMPLES - 1);

                        // Increment buffer index
                        sample_count <= sample_count + 1;

                        if (sample_count == TOTAL_SAMPLES) begin
                            // Return to IDLE after streaming
                            m_axis_tvalid <= 0;
                            m_axis_tlast <= 0;
                            state <= IDLE;
                        end
                    end
                end

            endcase
        end
    end

endmodule
