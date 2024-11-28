`timescale 1 ns / 1 ps

module data_anchor #(
    parameter DATA_WIDTH = 32,                  // Width of data samples
    parameter TOTAL_SAMPLES = 1024,            // Number of samples to collect
    parameter ADC_MAX_COUNT = 50,              // Max ADC cycles between samples
    parameter integer C_M_AXIS_TDATA_WIDTH = 32,
    parameter integer C_M_AXIS_START_COUNT = 32
) (
    // AXI Master Stream Interface
    input  wire m_axis_aclk,                   // AXI clock
    input  wire m_axis_aresetn,                // AXI reset (active-low)
    output reg  m_axis_tvalid,                 // AXI data valid
    output reg  [C_M_AXIS_TDATA_WIDTH-1:0] m_axis_tdata, // AXI data
    output reg  [(C_M_AXIS_TDATA_WIDTH/8)-1:0] m_axis_tstrb, // AXI byte enable
    output reg  m_axis_tlast,                  // AXI last signal
    input  wire m_axis_tready,                 // AXI ready signal

    // ADC interface
    input  wire [DATA_WIDTH-1:0] chanel1,      // ADC channel 1 data
    input  wire chan1_rdy                      // ADC data ready signal
);

  
    // Internal Signals
    reg [DATA_WIDTH-1:0] buffer[0:TOTAL_SAMPLES-1]; // Sample buffer
    reg [9:0] sample_count = 0;                     // Tracks samples collected
    reg [9:0] adc_loop = 0;                         // ADC delay counter
    reg [9:0] stream_index = 0;                     // Tracks samples transmitted
    reg [1:0] state = 0;                            // FSM state

    // FSM States
    localparam IDLE       = 2'b00;
    localparam BUFFERING  = 2'b01;
    localparam STREAMING  = 2'b10;

    // Initialization
    always @(posedge m_axis_aclk) begin
        if (!m_axis_aresetn) begin
            state <= IDLE;
            sample_count <= 0;
            adc_loop <= 0;
            stream_index <= 0;
            m_axis_tvalid <= 0;
            m_axis_tdata <= 0;
            m_axis_tstrb <= {(C_M_AXIS_TDATA_WIDTH/8){1'b1}}; // Enable all bytes
            m_axis_tlast <= 0;
        end else begin
            case (state)
                IDLE: begin
                    sample_count <= 0;
                    stream_index <= 0;
                    m_axis_tvalid <= 0;
                    m_axis_tlast <= 0;
                    state <= BUFFERING;
                end

                BUFFERING: begin
                    if (chan1_rdy) begin
                        if (adc_loop == ADC_MAX_COUNT) begin
                            buffer[sample_count] <= chanel1;
                            sample_count <= sample_count + 1;
                            adc_loop <= 0;

                            if (sample_count == TOTAL_SAMPLES - 1) begin
                                state <= STREAMING;
                            end
                        end else begin
                            adc_loop <= adc_loop + 1;
                        end
                    end
                end

                STREAMING: begin
                    if (stream_index < TOTAL_SAMPLES) begin
                        if (m_axis_tready) begin
                            m_axis_tdata <= buffer[stream_index];
                            m_axis_tvalid <= 1;
                            m_axis_tlast <= (stream_index == TOTAL_SAMPLES - 1);
                            stream_index <= stream_index + 1;
                        end
                    end else begin
                        m_axis_tvalid <= 0;
                        m_axis_tlast <= 0;
                        state <= IDLE;
                    end
                end

                default: state <= IDLE; // Fallback state
            endcase
        end
    end

endmodule