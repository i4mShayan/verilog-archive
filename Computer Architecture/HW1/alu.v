`include "cl_adder.v"

module alu
    #(parameter SIZE=32)
    (
    input [3:0] sel,
    input [SIZE-1:0] input1,
    input [SIZE-1:0] input2,
    output reg [SIZE-1:0] alu_result,
    output reg alu_cout
    );

    wire [SIZE-1:0] add_result, sub_result;
    wire add_cout, sub_cout;
    cl_adder #(SIZE) cla_add(input1, input2, add_result, add_cout);
    cl_adder #(SIZE) cla_sub(input1, -input2, sub_result, sub_cout);

    always @(*) begin
        case (sel)
            1: alu_result = add_result;
            3: alu_result = sub_result;
            4: alu_result = input1 & input2;
            8: alu_result = input1 | input2;
            10: alu_result = input1 < input2;
            13: alu_result = ~input1;
            15: alu_result = ~(input1 | input2);
        endcase

        case (sel)
            1: alu_cout = add_cout;
            3: alu_cout = sub_cout;
            default: alu_cout = 0;
        endcase
        if (alu_result[SIZE-1]==1)
            alu_result = -alu_result;

    end
endmodule