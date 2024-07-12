module spi_controller (
    input wire clk,       // System clock
    input wire reset,     // Reset signal
    input wire [7:0] data_in, // Data to be transmitted
    input wire start,     // Start signal for transmission
    output reg [7:0] data_out, // Received data
    output reg sclk,      // Serial clock
    output reg mosi,      // Master Out Slave In
    input wire miso,      // Master In Slave Out
    output reg ss         // Slave Select
);

    reg [2:0] bit_cnt;    // Bit counter
    reg [7:0] data_reg;   // Data register for transmission
    reg [7:0] data_rec;   // Data register for reception
    reg sclk_en;          // Clock enable for SCLK

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sclk <= 0;
            bit_cnt <= 0;
            ss <= 1;
            sclk_en <= 0;
            mosi <= 0;
        end else begin
            if (start) begin
                ss <= 0;
                sclk_en <= 1;
                data_reg <= data_in;
                bit_cnt <= 0;
            end

            if (sclk_en) begin
                sclk <= ~sclk;
                if (sclk == 0) begin
                    mosi <= data_reg[7];
                    data_reg <= {data_reg[6:0], 1'b0};
                    bit_cnt <= bit_cnt + 1;
                    if (bit_cnt == 7) begin
                        sclk_en <= 0;
                        ss <= 1;
                    end
                end else begin
                    data_rec <= {data_rec[6:0], miso};
                    if (bit_cnt == 7) begin
                        data_out <= data_rec;
                    end
                end
            end
        end
    end
endmodule
