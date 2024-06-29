module note_player_control(clk, reset, play_enable, load_new_note, note_done, load, timer_clear, timer_done);
    input clk, reset, play_enable, load_new_note, timer_done;
    output reg note_done, timer_clear, load;
    parameter RESET = 0, WAIT = 1, DONE = 2, LOAD = 3;
    reg [1:0] state, nextstate;

    always @(posedge clk)
        if(reset) state = RESET;
        else state = nextstate;

    always @(*)
    begin
        timer_clear = 0; load = 0; note_done = 0;
        case (state)
            RESET: begin timer_clear = 1; nextstate = WAIT; end
            WAIT: begin 
                if(!play_enable) nextstate = RESET;
                else if(timer_done) nextstate = DONE;
                else if(load_new_note) nextstate = LOAD;
                else nextstate = WAIT; 
            end
            DONE: begin timer_clear = 1; note_done = 1; nextstate = WAIT; end
            LOAD: begin timer_clear = 1; load = 1; nextstate = WAIT; end
            default: nextstate = RESET;
        endcase
    end
endmodule