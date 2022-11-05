`include "ripple_adder.v"

module rc_adder_tb();
    parameter SIZE = 16;

    reg [SIZE-1:0] add1;
    reg [SIZE-1:0] add2;
    reg c_in;
    wire [SIZE-1:0] result;
    wire c_out;
    rc_adder #(SIZE) rc_adder_instance(add1,add2,c_in,result,c_out);

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, rc_adder_tb);
        add1 = 16'b1111111100000000;
        add2 = 16'b0000000011111111;
        c_in=0;
        #50;
        add1 = 16'b1111111100000000;
        add2 = 16'b0000000011111111;
        c_in=1;
        #50;
        add1 = 16'b0000001111000011;
        add2 = 16'b0000000011001111;
        c_in=1;
        #50;
    end
    
endmodule