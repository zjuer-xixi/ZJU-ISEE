module dffr(r, en, clk, d, q);
    parameter n = 1;
    input en, r, clk;
    input [n-1:0] d; 
    output reg[n-1:0] q;
    
    always @(posedge clk or posedge r) // The process will get activated at the positive edge of clk or r
    begin 
        if(r)  q = 0;
        else if(en) q = d; 
            else q = q;
    end
endmodule