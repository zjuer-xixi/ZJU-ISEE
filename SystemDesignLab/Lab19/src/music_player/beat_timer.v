module timer(clk, en, timer_clear, duration_to_load, q, timer_done);                 
  input clk, en, timer_clear;  
  input [5:0] duration_to_load;
  output timer_done;          
  output reg [5:0]  q = 0;
     
  assign timer_done = (q == duration_to_load-1) && en;                // carry generates when q equals to n-1 and en signal is true
  always @(posedge clk)                           
  begin
      if(timer_clear) q = 0;                                // if r is true, then reset q to 0
      else if(en)        
      begin                         
        if(q == duration_to_load-1)  q = 0 ;           // if q equals to n-1, then reset q to 0
        else q = q + 1;		 
      end             
  end
endmodule