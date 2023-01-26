module q2 (clk, reset, in, out);

    input clk, reset, in;
    output out;
    reg out;
    reg [2:0] state;
    reg [2:0] next_state;

    initial begin
        state = 0;
        next_state = 0;
        out = 0;
    end

    always @(posedge clk) begin
        if (reset) begin
            state = 0;
            next_state = 0;
            out = 0;
        end
        else begin
            state = next_state;
        end
    end

    always @(*) begin
        case (state)
            0: begin
                if (in) next_state = 2;
                else next_state = 1;
            end
            1: begin
                if (in) next_state = 5;
                else next_state = 6;
            end
            2: begin
                if (in) next_state = 3;
                else next_state = 4;
            end
            3: begin
                if (in) begin 
                    out = 0;
                    next_state = 3;
                end
                else begin
                    out = 1;
                    next_state = 4;
                end
            end
            4: begin
                if (in) begin
                    out = 0;
                    next_state = 5;
                end
                else begin
                    out = 1;
                    next_state = 6;
                end
            end
            5: begin
                if (in) begin 
                    out = 1;
                    next_state = 3;
                end
                else begin
                    out = 0;
                    next_state = 4;
                end
            end
            6: begin
                if (in) begin
                    out = 1;
                    next_state = 5;
                end
                else begin
                    out = 0;
                    next_state = 6;
                end
            end
        endcase
    end
    
endmodule