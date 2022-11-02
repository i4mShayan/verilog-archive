module rom1
    #(parameter SIZE=6)
    (
    input [4:0] sel,
    output reg [SIZE-1:0] out
    );
    
    always @(sel) begin
    case (sel)
        0: out = 1;
        1: out = 3;
        2: out = 4;
        3: out = 8;
        4: out = 10;
        5: out = 13;
        6: out = 15;
        7: out = 1 + 6'b010000;
        8: out = 3 + 6'b010000;
        9: out = 4 + 6'b010000;
        10: out = 8 + 6'b010000;
        11: out = 10 + 6'b010000;
        12: out = 13 + 6'b010000;
        13: out = 15 + 6'b010000;
        14: out = 1 + 6'b100000;
        15: out = 3 + 6'b100000;
        16: out = 4 + 6'b100000;
        17: out = 8 + 6'b100000;
        18: out = 10 + 6'b100000;
        19: out = 13 + 6'b100000;
        20: out = 15 + 6'b100000;
        21: out = 1 + 6'b110000;
        22: out = 3 + 6'b110000;
        23: out = 4 + 6'b110000;
        24: out = 8 + 6'b110000;
        25: out = 10 + 6'b110000;
        26: out = 13 + 6'b110000;
        27: out = 15 + 6'b110000;
    endcase
    end
endmodule