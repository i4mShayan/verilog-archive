module rom6
    #(parameter SIZE=32)
    (
    input [2:0] sel,
    output reg [SIZE-1:0] out
    );
    
    always @(sel) begin
    case (sel)
        0: out = 32'h97245000;
        1: out = 32'h98243000;
        2: out = 32'h99243000;
        3: out = 32'h00243000;
        4: out = 32'h01243000;
    endcase
    end
endmodule