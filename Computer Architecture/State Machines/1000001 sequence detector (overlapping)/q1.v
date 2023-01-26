module q1 (clk, reset, in, out);
    input clk, reset, in;
    output out;
    reg out;
    reg [2:0] state;
    reg [2:0] next_state;

    initial begin
        state = 0;
    end

    always @(posedge clk) begin
        if(reset) state = 0;
        else state = next_state;
    end

    always @(state, in) begin
        out = 0;
        next_state = 0;
        case(state)
            0: begin
                if(in) next_state = 1;
                else next_state = 0;
            end
            1: begin
                if(in) next_state = 1;
                else next_state = 2;
            end
            2: begin
                if(in) next_state = 1;
                else next_state = 3;
            end
            3: begin
                if(in) next_state = 1;
                else next_state = 4;
            end
            4: begin
                if(in) next_state = 1;
                else next_state = 5;
            end
            5: begin
                if(in) next_state = 1;
                else next_state = 6;
            end
            6: begin
                if(in) next_state = 7;
                else next_state = 0;
            end
            7: begin
                out = 1;
                if(in) next_state = 1;
                else next_state = 2;
            end
            default: begin
                next_state = 0;
            end
        endcase
    end

endmodule