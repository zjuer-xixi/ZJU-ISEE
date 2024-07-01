`timescale 1ns/1ps
module IPCore_tb;

	reg		   clk	;
	reg		   reset	;
	wire[2:0]  TMDSp,TMDSn;
	wire	   TMDSp_clk,TMDSn_clk	;	 
	//clock
	initial 
	  begin
		 clk = 0;
		 forever #5 clk = ~clk;
	 end
    //
	glbl glbl();
	wire   pixel_clk;
	assign pixel_clk=IPCore_tb.IPCore_inst.pixel_clk;
	
	IPCore  IPCore_inst (  
         .clk(clk),  // 100MHz 
         .reset(reset), 
         .TMDSp(TMDSp), 
	 .TMDSn(TMDSn),  
         .TMDSp_clk(TMDSp_clk), 
	.TMDSn_clk(TMDSn_clk)  
         );

     initial 
     begin
	   reset = 1;
	   repeat (3) @(posedge pixel_clk);
	   reset = 0;
     end

  	integer frame_num;
	integer file_red;
	integer file_green;
	integer file_blue;
	integer file_rgb;
	
	initial begin
	frame_num = 0;
		file_rgb  = $fopen("rgb.rgb24","wb");
		while (1) 
		  begin
		   @(posedge pixel_clk);
			if (IPCore_tb.IPCore_inst.ActiveArea==1)
			  begin
			   WRITE_BYTE(IPCore_tb.IPCore_inst.blue, file_rgb);
			   WRITE_BYTE(IPCore_tb.IPCore_inst.green,file_rgb);
			   WRITE_BYTE(IPCore_tb.IPCore_inst.red,  file_rgb);
			   end
			if (IPCore_tb.IPCore_inst.sync_inst.EndLine==1) 
   			  begin
				///if (svga_tb.svga_top_inst.svga_ctrl_inst.nblank==1)
				$display("Line %d",IPCore_tb.IPCore_inst.PosY);
			   if (IPCore_tb.IPCore_inst.sync_inst.EndFrame==1)
					begin frame_num = frame_num + 1;end
			  end
				
			if (/*(frame_num == 1) &&*/ (IPCore_tb.IPCore_inst.sync_inst.EndFrame==1)) 
						
			 begin
				$fclose(file_rgb);
				$stop;
			 end
		end
	end
	
	task WRITE_BYTE;
	input [7:0] data;
	input integer file_ptr;
	
	//integer pos;
	begin
		$fwriteb(file_ptr,"%s",data);
	end
      endtask

endmodule
