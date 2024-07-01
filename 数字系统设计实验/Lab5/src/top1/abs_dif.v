module abs_dif(aIn, bIn, out);
  input  [3:0] aIn, bIn; 
  output [3:0] out;     
  
  wire agb;              // Wire to hold the result of 'a greater than b' comparison
  // Instantiate the comparator module to compare aIn and bIn
  comp #(.N(4)) comp_inst(.a(aIn), .b(bIn), .agb(agb), .aeb(), .alb());

  wire [3:0] max, min;   // Wires to hold the maximum and minimum of aIn and bIn
  // Two multiplexers to determine 'max' and 'min' based on 'agb'
  mux_2to1 #(.N(4)) mux1(.out(max), .in0(aIn), .in1(bIn), .addr(~agb));
  mux_2to1 #(.N(4)) mux2(.out(min), .in0(aIn), .in1(bIn), .addr(agb));

  wire [2:0] c;         // Carry bits for the full adders
  // Four full adders to perform the subtraction (binary two's complement add) to find the absolute difference
  full_adder adder0(.a(max[0]), .b(~min[0]), .s(out[0]), .ci(1'b1), .co(c[0]));
  full_adder adder1(.a(max[1]), .b(~min[1]), .s(out[1]), .ci(c[0]), .co(c[1]));
  full_adder adder2(.a(max[2]), .b(~min[2]), .s(out[2]), .ci(c[1]), .co(c[2]));
  full_adder adder3(.a(max[3]), .b(~min[3]), .s(out[3]), .ci(c[2]), .co());
endmodule