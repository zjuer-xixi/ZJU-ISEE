module mcu(
    input clk,          
    input reset,        
    input play_pause,   
    input next,         
    input song_done,    
    output play,        
    output reset_play,  
    output [1:0] song   
);

    wire NextSong;  // Internal signal to trigger the next song

    // Instantiate the counter module to track the current song
    counter_n #(.n(4), .counter_bits(2)) counter1(
        .clk(clk), 
        .en(NextSong), 
        .r(reset), 
        .q(song), 
        .co()
    );

    // Instantiate the control module to manage play/pause, next song, and reset signals
    mcu_control mcu_control_inst(
        .clk(clk), 
        .reset(reset), 
        .play_pause(play_pause), 
        .next(next), 
        .song_done(song_done), 
        .NextSong(NextSong), 
        .reset_play(reset_play), 
        .play(play)
    );
endmodule