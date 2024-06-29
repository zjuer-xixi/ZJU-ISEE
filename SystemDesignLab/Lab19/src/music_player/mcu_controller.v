module mcu_control(
    input clk,         
    input reset,        
    input next,        
    input play_pause,   // Play/Pause button signal
    input song_done,    // Signal when song is done
    output reg play,   
    output reg reset_play, 
    output reg NextSong 
); 

    parameter RESET = 0, PAUSE = 1, PLAY = 2, NEXT = 3; // State definitions
    reg [1:0] state, nextstate; // Current and next state

    always @(posedge clk) 
        if(reset) state = RESET; // Reset state
        else state = nextstate; // Update state
    
    always @(*) 
    begin
        // Default outputs
        play = 0; 
        NextSong = 0; 
        reset_play = 0;
        
        case(state) 
            RESET: begin 
                reset_play = 1; 
                nextstate = PAUSE; 
            end 
            PAUSE: begin 
                if(play_pause) nextstate = PLAY; 
                else if(next) nextstate = NEXT; 
                else nextstate = PAUSE; 
            end 
            PLAY: begin 
                play = 1; 
                if(play_pause) nextstate = PAUSE; 
                else if(next) nextstate = NEXT; 
                else if(song_done) nextstate = RESET; 
                else nextstate = PLAY; 
            end 
            NEXT: begin 
                reset_play = 1; 
                NextSong = 1; 
                nextstate = PLAY; 
            end 
            default: nextstate = RESET; 
        endcase
    end
endmodule
