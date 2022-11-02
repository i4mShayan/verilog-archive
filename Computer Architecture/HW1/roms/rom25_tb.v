`include "rom25.v"

module rom25_tb();
    parameter SIZE = 32;

    reg [1:0] sel;
    wire [SIZE-1:0] rom_out;

    rom25 #(SIZE) rom25_test(.sel(sel), .out(rom_out));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, rom25_test);
        sel=0;
        #10;
        sel=1;
        #10;
        sel=2;
        #10;
        sel=3;
        #10;
    end
    
endmodule