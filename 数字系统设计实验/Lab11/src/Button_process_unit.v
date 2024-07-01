module button_unit(clk, ButtonIn, reset, ButtonOut);
    parameter sim = 0;
    input clk, ButtonIn, reset;
    output ButtonOut;
    
    wire a;
    synchronizer synchronizer_inst(.asynch_in(ButtonIn), .clk(clk), .synch_out(a));

    wire b;
    debouncer #(.sim(sim))debouncer_inst(.clk(clk), .in(a), .r(reset), .out(b)); 

    PWM PWM_inst(.in(b), .clk(clk), .out(ButtonOut));
endmodule