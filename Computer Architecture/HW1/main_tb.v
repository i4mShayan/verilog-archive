`include "main.v"

module main_tb ();
    parameter SIZE=32;
    reg [4:0] rom1_in;
    reg [1:0] rom2_in;
    reg [1:0] rom3_in;
    reg [1:0] rom4_in;
    reg [1:0] rom5_in;
    reg [2:0] rom6_in;
    wire [SIZE-1:0] final_result;

    main #(SIZE) main_test (rom1_in, rom2_in, rom3_in, rom4_in, rom5_in, rom6_in, final_result);

    integer i;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, main_tb);
        // $monitor(rom1_sel, final_result);
        for (i=0; i<28; i=i+1) begin
            rom1_in=i;
            rom2_in=$random%4;
            rom3_in=$random%4;
            rom4_in=$random%4;
            rom5_in=$random%4;
            rom6_in=$random%5;
            #1;
        end
        rom1_in=0;
        #1;
        rom1_in=1;
        #1;
        // Note: ignore the 2 first signals, there is a delay on program
    end
endmodule