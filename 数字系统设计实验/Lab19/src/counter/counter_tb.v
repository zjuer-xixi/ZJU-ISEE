`timescale 1ns / 1ps

module tb_counter_n;

  // Parameter declarations
  parameter n = 64;
  parameter counter_bits = 6;
  
  // Inputs
  reg clk;
  reg en;
  reg r;
  
  // Outputs
  wire co;
  wire [counter_bits-1:0] q;
  
  // Instantiate the Unit Under Test (UUT)
  counter_n #(.n(n), .counter_bits(counter_bits)) uut (
    .clk(clk),
    .en(en),
    .r(r),
    .co(co),
    .q(q)
  );

  // Clock generation
  always #5 clk = ~clk;  // Generate a clock with a period of 10ns (100 MHz)
  
  initial begin
    // Initialize Inputs
    clk = 0;
    en = 0;
    r = 1;  // Start with reset active
    
    // Wait for 100 ns for global reset to finish
    #100;
    
    // Release reset
    r = 0;
    en = 1;  // Enable the counter
    
    // Wait for enough cycles to see the counter in action
    #10000;
    
    // Stop the simulation
    $stop;
  end
  
  // Monitor to observe the values of q and co
  initial begin
    $monitor("Time = %d : clk = %b, en = %b, r = %b, q = %d, co = %b", $time, clk, en, r, q, co);
  end
  
endmodule
