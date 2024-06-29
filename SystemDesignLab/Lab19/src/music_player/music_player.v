module music_player(clk, reset, play_pause, next, NewFrame, sample, play, song);
    parameter sim = 0;
    input clk, reset, play_pause, next, NewFrame;
    output [15:0] sample;
    output [1:0] song;
    output play;

    wire [5:0] note, duration;
    wire [1:0] song;
    wire play, reset_play, song_done, ready, note_done, new_note, beat;

    mcu mcu_inst(.clk(clk), .reset(reset), .play_pause(play_pause), .next(next), .song_done(song_done), .song(song), .reset_play(reset_play), .play(play));
    song_reader song_reader_inst(.clk(clk), .reset(reset_play), .note_done(note_done), .play(play), .song(song), .song_done(song_done), .new_note(new_note), .duration(duration), .note(note));
    note_player note_player_inst(.clk(clk), .reset(reset_play), .play_enable(play), .note_to_load(note), .duration_to_load(duration), .load_new_note(new_note), .note_done(note_done), .sampling_pulse(ready), .beat(beat), .sample(sample), .sample_ready());
    synchronizer synchronizer_inst(.in(NewFrame), .clk(clk), .out(ready));
    counter_n #(.n(sim?64:1000), .counter_bits(sim?6:10))counter_inst1(.clk(clk), .en(ready), .r(0), .q(), .co(beat));
endmodule