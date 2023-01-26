`include "q2.v"

module q2_tb();
    reg clk, reset, in;
    wire out;

    q2 qtb(
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, q2_tb);
        reset = 1;
        reset = 0;
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
        in = 1;
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