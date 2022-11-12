`include "alu.v"

module alu_tb();
    parameter SIZE = 8;

    reg [3:0] op;
    reg [SIZE-1:0] a;
    reg [SIZE-1:0] b;
    wire [SIZE-1:0] result;
    wire cout, ov, sign;

    alu #(SIZE) alu_instance(
        .op(op),
        .a(a),
        .b(b),
        .result(result),
        .cout(cout),
        .ov(ov),
        .sign(sign)
    );

    integer i;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, alu_tb);
        op=0;
        a=8'b10000000;
        b=8'b10000001;
        #10;
        a=8'b01111111;
        b=8'b00000011;
        #10;
        a=8'b01111111;
        b=8'b10000011;
        #10;
        op=1;
        a=8'b01111111;
        b=8'b10000001;
        #10;
        a=8'b10000000;
        b=8'b10000001;
        #10;
        a=8'b01111111;
        b=8'b00000011;
        #10
        op=2;
        #10;
        op=3;
        #10;
        op=4;
        #10;
        op=5;
        #10;
        op=6;
        #10;
        op=7;
        #10;
    end
    
endmodule