module spi_tb;

    reg clk;
    reg reset;
    reg [7:0] data_in;
    reg start;
    wire [7:0] data_out;
    wire sclk;
    wire mosi;
    reg miso;
    wire ss;

    spi_controller uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .start(start),
        .data_out(data_out),
        .sclk(sclk),
        .mosi(mosi),
        .miso(miso),
        .ss(ss)
    );

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        start = 0;
        data_in = 8'b10101010;
        miso = 0;

        // Release reset
        #10 reset = 0;

        // Start SPI transmission
        #10 start = 1;
        #10 start = 0;

        // Simulate MISO data reception
        #20 miso = 1;
        #20 miso = 0;
        #20 miso = 1;
        #20 miso = 0;
        #20 miso = 1;
        #20 miso = 0;
        #20 miso = 1;
        #20 miso = 0;

        // End simulation
        #100 $finish;
    end

    // Clock generation
    always #5 clk = ~clk;

    // Monitor output signals
    initial begin
        $monitor("Time = %0d, Data Out = %b, SCLK = %b, MOSI = %b, MISO = %b, SS = %b", $time, data_out, sclk, mosi, miso, ss);
    end

endmodule
