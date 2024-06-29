module judgment(clk, duration, co, song_done);
    input clk, co;
    input [5:0] duration;
    output reg song_done;
    parameter NOT_DONE = 0, DONE = 1, PAUSE = 2; 
    reg [1:0] state, nextstate;

    // State transition on clock edge
    always @(posedge clk)
        state = nextstate;

    // State machine logic
    always @(*)
    begin
        song_done = 0;
        case(state)
            NOT_DONE: begin 
                if(duration == 0) nextstate = DONE; 
                else if(co) nextstate = DONE; 
                else nextstate = NOT_DONE; 
            end
            DONE: begin 
                song_done = 1; 
                nextstate = PAUSE; 
            end
            PAUSE: begin 
                if(duration) nextstate = NOT_DONE; 
                else nextstate = PAUSE; 
            end
            default: nextstate = NOT_DONE; 
        endcase
    end
endmodule