`include "alu.v"

module alu_tb();
    parameter SIZE = 32;

    reg [3:0] opcode;
    reg [SIZE-1:0] input1;
    reg [SIZE-1:0] input2;
    wire [SIZE-1:0] alu_result;
    wire c_out;

    alu #(SIZE) alu_instance(opcode, input1, input2, alu_result, c_out);

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, alu_tb);
        input1=21;
        input2=10;
        opcode=1;
        #10;
        opcode=3;
        #10;
        opcode=8;
        #10;
        opcode=13;
        #10;
    end
    
endmodule