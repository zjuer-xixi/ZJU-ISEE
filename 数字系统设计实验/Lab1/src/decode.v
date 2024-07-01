///////////////////////////////////
// Engineer:qmj 
///////////////////////////////////
module decode(din,out);
  output[7:0]  out;
  input[2:0]  din ;
  reg [7:0] out;
  always @(*)
    case(din)
	  0:      out=8'b0000_0001;
	  1:      out=8'b0000_0010;
	  2:      out=8'b0000_0100;
	  3:      out=8'b0000_1000;
	  4:      out=8'b0001_0000;
	  5:      out=8'b0010_0000;
	  6:      out=8'b0100_0000;
	  default:out=8'b1000_0000;
	endcase	

endmodule
	