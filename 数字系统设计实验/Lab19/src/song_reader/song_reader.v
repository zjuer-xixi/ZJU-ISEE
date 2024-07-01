module song_reader(clk, reset, note_done, play, song, song_done, new_note, duration, note);
    input clk, reset, note_done, play;
    input [1:0] song;
    output song_done, new_note;
    output [5:0] duration, note;

    wire co;
    wire [4:0] q;

    // 5-bit counter with 32 as modulus
    counter_n #(.n(32), .counter_bits(5)) conter_inst2(.clk(clk), .en(note_done), .r(reset), .q(q), .co(co));
    // Control logic for song reading
    song_reader_control song_reader_control_inst(.clk(clk), .reset(reset), .note_done(note_done), .play(play), .new_note(new_note));
    // ROM for storing song notes and durations
    song_rom song_rom_inst(.clk(clk), .dout({note[5:0], duration[5:0]}), .addr({song[1:0], q[4:0]}));	
    // Checks song duration and completion
    judgment judgment_inst(.clk(clk), .duration(duration), .co(co), .song_done(song_done));

endmodule
