`include "roms.v"
`include "mux.v"
`include "alu.v"


module main #(parameter SIZE=32)(
    input [4:0] rom1_in,
    input [1:0] rom2_in,
    input [1:0] rom3_in,  
    input [1:0] rom4_in,  
    input [1:0] rom5_in,  
    input [2:0] rom6_in,  
    output reg [SIZE-1:0] final_result
);
    
    wire [5:0] w_rom1_out;
    wire [SIZE-1:0] w_rom_out [2:6];


    rom1 rom_1(rom1_in, w_rom1_out);
    rom2 rom_2(rom2_in, w_rom_out[2]);
    rom3 rom_3(rom3_in, w_rom_out[3]);
    rom4 rom_4(rom4_in, w_rom_out[4]);
    rom5 rom_5(rom5_in, w_rom_out[5]);
    rom6 rom_6(rom6_in, w_rom_out[6]);

    wire [SIZE-1:0] w_mux_out [1:2];
    mux #(SIZE) mux_1(w_rom_out[2], w_rom_out[3], w_rom1_out[0], w_mux_out[1]);
    mux #(SIZE) mux_2(w_rom_out[4], w_rom_out[5], w_rom1_out[1], w_mux_out[2]);


    wire [SIZE-1:0] w_alu_result;
    wire w_alu_cout;
    alu alu_ins(w_rom1_out[5:2], w_mux_out[1], w_mux_out[2], w_alu_result, w_alu_cout);
    

    // wire w_add_cout;
    // cl_adder #(SIZE) adder(w_alu_result, w_rom_out[6], final_result, w_add_cout);

    always @(*) begin
        final_result = w_alu_result + w_rom_out[6];

        if (w_alu_result == 0)
            final_result = 32'hzzzzzzzz;
        if (w_alu_cout == 1)
            final_result = final_result + 32'h01000000;
            
    end
    // always @(rom1_in) begin
        
    // end
endmodule