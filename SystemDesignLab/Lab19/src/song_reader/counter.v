module counter_n(clk, en, r, q, co);
  parameter  n = 4; 
  parameter  counter_bits = 2;                    
  input   clk, en, r;  
  output co;          
  output reg [counter_bits-1:0]  q = 0;
          
  assign  co = (q == (n-1)) && en;                // carry generates when q equals to n-1 and en signal is true
  always @(posedge clk)                           
  begin
      if(r) q = 0;                                // if r is true, then reset q to 0
      else if(en) 
        begin                            
          if(q == (n-1))  q = 0 ;           // if q equals to n-1, then reset q to 0
          else q = q + 1;		
        end     
      else q = q;         
  end
  
endmodule