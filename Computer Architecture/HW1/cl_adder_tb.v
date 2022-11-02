`include "cl_adder.v"

module cl_adder_tb();
    parameter SIZE = 32;

    reg [SIZE-1:0] add1;
    reg [SIZE-1:0] add2;
    wire [SIZE-1:0] result;
    wire c_out;
    cl_adder #(SIZE) cl_adder_instance(add1,add2,result,c_out);

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, cl_adder_tb);
        add1 = 6;
        add2 = 5;
        #10;
        add1 = 1;
        add2 = 4;
        #10;
        add1 = 3;
        add2 = 7;
        #10;
        add1 = 8;
        add2 = 9;
        #10;
    end
    
endmodule