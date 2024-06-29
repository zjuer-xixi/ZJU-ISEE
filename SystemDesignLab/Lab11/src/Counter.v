module counter_n(clk, en, r, q, co);
  parameter  n = 100000; 
  parameter  counter_bits = 17;                    
  input   clk, en, r ;  
  output co;          
  output [counter_bits-1:0]  q;
  reg [counter_bits-1:0]  q = 0;   
        
  assign  co = (q == (n-1)) && en;                // carry generates when q equals to n-1 and en signal is true
  always @(posedge clk)                           
  begin
      if(r) q = 0;                                // if r is true, then reset q to 0
      else if(en)                                 
                if(q == (n-1))  q = 0 ;           // if q equals to n-1, then reset q to 0
                else q = q + 1;		              
  end
  
endmodule