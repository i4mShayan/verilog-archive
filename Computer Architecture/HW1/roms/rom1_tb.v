`include "rom1.v"

module rom6_tb();
    parameter SIZE=32;

    reg [4:0] sel;
    wire [SIZE-1:0] rom_out;

    rom1 #(SIZE) rom1_test(.sel(sel), .out(rom_out));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, rom1_test);
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
        sel=11;
        #10;
        sel=27;
        #10;
    end
    
endmodule