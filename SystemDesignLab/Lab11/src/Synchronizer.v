module synchronizer(asynch_in, clk, synch_out); 
    input asynch_in, clk; 
    output synch_out; 

    wire q1; 

    // Instantiate 'dffr' with q1 as output, asynch_in as data, clk as clock and r as reset
    dffr #(.n(1))dffr1(.r(0), .en(1), .clk(clk), .d(asynch_in), .q(q1)); 

    // Instantiate 'dffr' with synch_out as output, q1 as data, clk as clock and r as reset
    dffr #(.n(1))dffr2(.r(0), .en(1), .clk(clk), .d(q1), .q(synch_out)); 

endmodule