`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: zju
// Engineer:qmj
////////////////////////////////////////////////////////////////////////////////

module note_player_tb_v;
  parameter delay=10;
	// Inputs
	reg clk;
	reg reset;
	reg play_enable;
	reg [5:0] note_to_load=38;
	reg [5:0] duration_to_load=10;
	reg load_new_note;
	reg beat;
	reg sampling_pulse;

// Outputs
	wire note_done;
	wire [15:0] sample;
	wire sample_ready;

// Instantiate the Unit Under Test (UUT)
	note_player uut (
		.clk(clk), 
		.reset(reset), 
		.play_enable(play_enable), 
		.note_to_load(note_to_load), 
		.duration_to_load(duration_to_load), 
		.note_done(note_done), 
		.load_new_note(load_new_note), 
		.beat(beat), 
		.sampling_pulse(sampling_pulse), 
		.sample(sample), 
		.sample_ready(sample_ready)
	);
    reg new_note1,new_note2;
	initial 
	  begin
		// Initialize Inputs
		clk = 0;
		reset =1;
		play_enable = 0;
		new_note1 = 0;
 		#(delay*1.5+1) reset=0; 
		#(delay*5) play_enable = 1; 
		#(delay*2)
		           new_note1 = 1;
		#(delay)   new_note1 = 0;	
	  
	   #(delay*1200) play_enable = 0;
           #(delay*100)    $stop;
	  end	
	  
//clock
	  always #(delay/2) clk=~clk;
	
//sampling_pulse
	  reg[1:0] temp_1=0;
      always @(*) sampling_pulse=&temp_1;
	  always @(posedge clk)
		  begin
			temp_1=temp_1+1;
		  end
//beat 
	 reg[3:0] temp_2=0; 
	 always @(posedge clk)
	  if(sampling_pulse)
		begin
		  temp_2=temp_2+1;
		end  
	 always @(*)beat=&temp_2 && sampling_pulse;
//			  
        always @(posedge clk)
        begin
          if(note_done) begin 
          note_to_load=note_to_load+10;
          duration_to_load =duration_to_load-3;
          new_note2 = 1;end
         else  new_note2 = 0;
       end
	   
	   always @(*) load_new_note=new_note1||new_note2;
	     
endmodule

