module PWM(in, clk, out); 
    input in, clk; 
    output out; 
    
    wire q; 
    
    dffr #(.n(1))dffr_inst(.r(0), .en(1), .clk(clk), .d(in), .q(q));

    // This represents the PWM logic.
    assign out = ~q && in;
endmodule 