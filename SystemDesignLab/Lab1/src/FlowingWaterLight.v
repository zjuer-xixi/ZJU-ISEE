module FlowingWaterLight(clk,reset,direction,led);
  parameter sim=0;
  input clk,reset,direction;
  output[7:0] led;
///////////////////////////////////////////////////////////////
//分频计数器实例，sim=0时，分频比n=5000_0000；计数器位数
//counter_bits=26;而sim=1时，分频比n=10；计数器位数counter_bits=4; 
///////////////////////////////////////////////////////////////   
   wire pulse2Hz;
   counter_n #(.n(sim?10:5000_0000),.counter_bits(sim?4:26))
	   div_inst(.clk(clk), .en(1), .r(0), .q(),.co(pulse2Hz));
  //-------------------   可逆计数器实例  ------------------//
    wire[2:0] q; 
    counter_up_dn #(.counter_bits(3))  counter_up_dn_inst(
	  .clk(clk),.en(pulse2Hz),.u_d(direction),.r(reset),.q(q));
  // -------------------   3线-8线器实例  ------------------//
   decode  decode_inst(.din(q),.out(led));
endmodule
	