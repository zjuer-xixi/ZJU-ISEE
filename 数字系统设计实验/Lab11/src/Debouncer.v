module debouncer(clk, in, r, out); 
    parameter sim = 0;
    input clk, in, r; // Input signal declaration. Clock, Input, Reset
    output out; // Output signal declaration

    // Wire declarations for internal signals
    wire pulse1kHz, timer_done, timer_clr;
    
    // Frequency divider generates a 1 kHz pulse from the clock signal
    counter_n #(.n(sim?32:100000), .counter_bits(sim?6:17))frequency_divider(.clk(clk), .en(1), .r(0), .q(), .co(pulse1kHz));

    // Timer that's synced with the generated 1kHz pulse
    counter_n #(.n(10), .counter_bits(4))timer(.clk(clk), .en(pulse1kHz), .r(timer_clr), .q(), .co(timer_done));

    // Control unit to handle input and debouncing logic
    control control_inst(.clk(clk), .r(r), .in(in), .out(out), .timer_clr(timer_clr), .timer_done(timer_done));
endmodule 