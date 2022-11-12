module alu
    #(parameter SIZE=8)
    (
    input [3:0] op,
    input [SIZE-1:0] a,
    input [SIZE-1:0] b,
    output reg [SIZE-1:0] result,
    output reg cout,
    output reg ov,
    output reg sign
    );

    always @(*) begin
        // if(input1[SIZE-1]==1){
        //     reg [SIZE-1:0] a = -(~input1[SIZE-1:0]+1);
        // }
        // if(input2[SIZE-1]==1){
        //     reg [SIZE-1:0] b = -(~input2[SIZE-1:0]+1);
        // }
        // reg [SIZE-1:0] a,
        // reg [SIZE-1:0] b,
        // a=input1;
        // b=input2;
        case (op)
            0: {cout, result} = a + b;
            1: {cout, result} = a - b;
            2: {cout, result} = a & b;
            3: {cout, result} = a | b;
            4: {cout, result} = a ^ b;
            5: {cout, result} = ~ a;
            6: {cout, result} = a >> 1;
            7: {cout, result} = a << 1;
        endcase

        if((a[SIZE-1]==1 && b[SIZE-1]==1 && result[SIZE-1]==0) || (a[SIZE-1]==0 && b[SIZE-1]==0 && result[SIZE-1]==1)) begin
            ov=1;
        end
        else begin
            ov=0;
        end

        sign=result[SIZE-1];
        
    end
endmodule