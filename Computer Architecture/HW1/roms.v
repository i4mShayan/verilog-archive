module rom1
    #(parameter SIZE=6)
    (
    input [4:0] sel,
    output reg [SIZE-1:0] out
    );
    
    always @(*) begin
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

module rom2
    #(parameter SIZE=32)
    (
    input [1:0] sel,
    output reg [SIZE-1:0] out
    );
    
    always @(*) begin
    case (sel)
        0: out = 32'h00000065;
        1: out = 32'h00000054;
        2: out = 32'h00000040;
        3: out = 32'h00000082;
    endcase
    end
endmodule

module rom3
    #(parameter SIZE=32)
    (
    input [1:0] sel,
    output reg [SIZE-1:0] out
    );
    
    always @(*) begin
    case (sel)
        0: out = 32'h00000031;
        1: out = 32'h00000032;
        2: out = 32'h00000033;
        3: out = 32'h00000034;
    endcase
    end
endmodule

module rom4
    #(parameter SIZE=32)
    (
    input [1:0] sel,
    output reg [SIZE-1:0] out
    );
    
    always @(*) begin
    case (sel)
        0: out = 32'h00000041;
        1: out = 32'h00000042;
        2: out = 32'h00000043;
        3: out = 32'h00000044;
    endcase
    end
endmodule

module rom5
    #(parameter SIZE=32)
    (
    input [1:0] sel,
    output reg [SIZE-1:0] out
    );
    
    always @(*) begin
    case (sel)
        0: out = 32'h00000051;
        1: out = 32'h00000052;
        2: out = 32'h00000053;
        3: out = 32'h00000054;
    endcase
    end
endmodule

module rom6
    #(parameter SIZE=32)
    (
    input [2:0] sel,
    output reg [SIZE-1:0] out
    );
    
    always @(*) begin
    case (sel)
        0: out = 32'h97245000;
        1: out = 32'h98243000;
        2: out = 32'h99243000;
        3: out = 32'h00243000;
        4: out = 32'h01243000;
    endcase
    end
endmodule