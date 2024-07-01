module ModeComparator(a, b, m, y);
    parameter n = 8;                
    input[n-1:0] a, b;              
    input m;                        
    output[n-1:0] y;                

    wire agb;                       // Wire to hold the result of 'a greater than b' comparison
    // Instantiate the comparator module to compare 'a' and 'b'
    comp #(.n(8)) comp_inst(.a(a), .b(b), .agb(agb), .aeb(), .alb());

    wire addr;                      // Wire to determine the mux address based on mode 'm'
    // Determine the address for mux; XOR 'agb' with mode 'm'
    assign addr = ~agb^m;   
    
    wire[n-1:0] max, min;             // Wires to hold the maximum and minimum values of 'a' and 'b'
    // Instantiate a 2-to-1 mux to select the comparison output based on 'addr'
    mux_2to1 #(.n(8)) mux(.out(y), .in0(a), .in1(b), .addr(addr));

endmodule