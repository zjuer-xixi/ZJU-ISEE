module note_player(clk, reset, play_enable, note_to_load, duration_to_load, load_new_note, note_done, sampling_pulse, beat, sample, sample_ready);
    input clk, reset, play_enable, load_new_note, sampling_pulse, beat;
    input [5:0] note_to_load, duration_to_load;
    output note_done, sample_ready;
    output [15:0] sample;

    // Flip-flop to hold current note
    wire [5:0] qout;
    wire load;
    dffr #(.n(6)) dffr_inst(.r(~play_enable || reset), .en(load), .clk(clk), .d(note_to_load), .q(qout));

    // ROM to get frequency value for note
    wire [19:0] dout;
    frequency_rom frequency_rom_inst(.clk(clk), .addr(qout), .dout(dout));
    
    // DDS to generate sample
    dds dds_inst(.clk(clk), .reset(~play_enable || reset), .sampling_pulse(sampling_pulse), .k({2'b00, dout}), .sample(sample), .new_sample_ready(sample_ready));
    
    // Control unit for note player
    wire timer_clear, timer_done;
    note_player_control note_player_control_inst(.clk(clk), .reset(reset), .play_enable(play_enable), .load_new_note(load_new_note), .note_done(note_done), .load(load), .timer_clear(timer_clear), .timer_done(timer_done));
    
    // Timer to keep track of note duration
    timer timer_inst(.clk(clk), .en(beat), .timer_clear(timer_clear), .duration_to_load(duration_to_load), .q(), .timer_done(timer_done));
endmodule
