module rc_adder
    #(parameter SIZE=16)
    (
    input [SIZE-1:0] input1,
    input [SIZE-1:0] input2,
    input c_in,
    output [SIZE-1:0] result,
    output c_out);
    
    wire [SIZE:0] w_carry;
    wire [SIZE-1:0] w_generate, w_propagate, w_sum;

    assign w_carry[0] = c_in;

    genvar i;
    generate
        for (i=0; i<SIZE; i=i+1)
        begin
            full_adder full_adder_inst(input1[i], input2[i], w_carry[i], w_sum[i], w_carry[i+1]);
        end
    endgenerate

    assign result = w_sum;
    assign c_out = w_carry[SIZE];
endmodule

module full_adder(a, b, c_in, out, c_out);
	input a, b, c_in;
	output out, c_out;

	assign out = a ^ b ^ c_in;
	assign c_out = ((a ^ b) & c_in) | (a & b);
endmodule