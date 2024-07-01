module dds(clk, reset, sampling_pulse, k, sample, new_sample_ready);
    input clk, reset, sampling_pulse;
    input [21:0] k;          // Phase Increment value
    output [15:0] sample;     
    output new_sample_ready;

    wire [21:0] raw_addr;                          
    wire [21:0] temp;        // Temporary variable for holding adder's output
    wire [9:0] rom_addr;                           
    wire [15:0] raw_data;                         
    wire [15:0] data;                              
    wire area;                                 

    // Full Adder: temp = k + raw_addr, adding phase increment to the current address
    full_adder#(.n(22)) adder_inst(.a(k), .b(raw_addr), .s(temp), .co(), .ci(0)); 
    
    dffr#(.n(22)) dffr1(.d(temp), .r(reset), .en(sampling_pulse), .clk(clk), .q(raw_addr));  
    
    // Address Processor
    addr_process addr_process_inst(.addr(raw_addr[20:10]), .rom_addr(rom_addr));         
    
    // ROM outputting raw sine wave samples
    sine_rom sine_rom1(.clk(clk), .addr(rom_addr), .dout(raw_data)); 
    
    dffr#(.n(1)) dffr2(.r(0), .en(1), .clk(clk), .d(raw_addr[21]), .q(area)); 
     
    assign data[15:0] = area? (~raw_data[15:0]+1) : raw_data[15:0]; // Data Processing
    
    dffr#(.n(16)) dff3(.r(0), .en(sampling_pulse), .clk(clk), .d(data), .q(sample)); 
    
    dffr#(.n(1)) dff4(.r(0), .en(1), .clk(clk), .d(sampling_pulse), .q(new_sample_ready)); 

endmodule 