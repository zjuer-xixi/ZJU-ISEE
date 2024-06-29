module addr_process(addr, rom_addr);  // A module for Address Processing
    input [10:0] addr;                
    output reg [9:0] rom_addr;            

    always @* begin
        if(addr[10] == 0)                  
            rom_addr = addr[9:0];      
        else if(addr[10:0] == 1024)   // Special Case: If raw_addr is 1024
            rom_addr = 1023;               
        else                              
            rom_addr = ~addr[9:0] + 1; 
    end
endmodule