`include "mux.v"

module mux_tb();

    parameter SIZE = 32;

    reg [SIZE-1:0] a;
    reg [SIZE-1:0] b;
    reg sel;
    wire [SIZE-1:0] out;
    mux #(SIZE) mux_test(.in1(a), .in2(b), .out(out), .sel(sel));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, mux_tb);
        a=2;
        b=5;
        sel=0;
        #10;
        sel=1;
        #10;
    end
    
endmodule