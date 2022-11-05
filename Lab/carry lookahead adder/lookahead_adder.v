module cl_adder
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
            assign w_generate[i] = input1[i] & input2[i];
            assign w_propagate[i] = input1[i] ^ input2[i];
            assign w_carry[i+1] = w_generate[i] | (w_propagate[i] & w_carry[i]);
            assign w_sum[i] = w_carry[i] ^ w_propagate[i];
        end
    endgenerate

    assign result = w_sum;
    assign c_out = w_carry[SIZE];
endmodule