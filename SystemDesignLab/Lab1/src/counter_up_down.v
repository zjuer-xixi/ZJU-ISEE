`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////
// Company:zju 
// Engineer:qmj 
////////////////////////////////////////////////////////////////////////////
module counter_up_dn(clk,,en,u_d,r,q);
  parameter  counter_bits=1;
  input   clk,en,u_d,r ;
  output  [counter_bits-1:0]  q;
  reg [counter_bits-1:0]  q = 0;
  always @(posedge clk) 
  begin
      if(r) q=0;
	  else if(en)
              begin
	          if(u_d) q=q+1;	
                  else q=q-1;				
              end
  end
endmodule
