`include "rom6.v"

module rom6_tb();
    parameter SIZE = 32;

    reg [2:0] sel;
    wire [SIZE-1:0] rom_out;

    rom6 #(SIZE) rom6_test(.sel(sel), .out(rom_out));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, rom6_test);
        sel=0;
        #10;
        sel=1;
        #10;
        sel=2;
        #10;
        sel=3;
        #10;
        sel=4;
        #10;
    end
    
endmodule