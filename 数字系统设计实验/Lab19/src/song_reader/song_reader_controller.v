module song_reader_control(clk, reset, note_done, play, new_note);
    input clk, reset, note_done, play;
    output reg new_note;
    parameter RESET = 0, NEW_NOTE = 1, WAIT = 2, NEXT_NOTE = 3;
    reg [1:0] state, nextstate;

    // State transition on clock edge
    always @(posedge clk)
        if(reset) state = RESET;
        else state = nextstate;

    // State machine logic
    always @(*)
    begin
        new_note = 0;
        case(state)
            RESET: begin 
                if(play) nextstate = NEW_NOTE; 
                else nextstate = RESET; 
            end
            NEW_NOTE: begin 
                new_note = 1; 
                nextstate = WAIT; 
            end
            WAIT: begin 
                if(play != 1) nextstate = RESET; 
                else if(note_done) nextstate = NEXT_NOTE; 
                else nextstate = WAIT; 
            end
            NEXT_NOTE: begin 
                nextstate = NEW_NOTE; 
            end
            default: nextstate = RESET; 
        endcase
    end
endmodule
