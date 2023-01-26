`include "q1.v"

module q1_tb();
    reg clk, reset, in;
    wire out;

    q1 qtb(
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, q1_tb);
        reset = 1;
        in = 0;
        #10;
        reset = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 1;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 1;
        #10;
        in = 1;
        #10;
        $finish;
    end

    always 
        #5 clk = ~clk;
    initial
        clk = 0;
endmodule