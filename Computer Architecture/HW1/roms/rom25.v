module rom25
    #(parameter SIZE=32)
    (
    input [1:0] sel,
    output reg [SIZE-1:0] out
    );
    
    always @(sel) begin
    case (sel)
        0: out = 32'h00000065;
        1: out = 32'h00000054;
        2: out = 32'h00000040;
        3: out = 32'h00000082;
    endcase
    end
endmodule