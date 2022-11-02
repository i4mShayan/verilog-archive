module mux
    #(parameter SIZE=32)
    (
    input [SIZE-1:0] in1, 
    input [SIZE-1:0] in2, 
    input sel,
    output [SIZE-1:0] out
    ); 

    assign out = sel ? in2:in1; 

endmodule