#include<stdio.h>
#include<math.h>
void main()
{
 int i ;
 int data;
 FILE *fp;
if(( fp=fopen("sine_rom.v","w"))==NULL)
{
 printf("error");
 exit(0);
}
fprintf(fp,"%s\n","module  sine_rom( ");
fprintf(fp,"%s\n","  input            clk, ");
fprintf(fp,"%s\n","  input  wire[9:0] addr, ");
fprintf(fp,"%s\n","  output reg[15:0] dout); ");

fprintf(fp,"%s\n","  always @(posedge clk) ");
fprintf(fp,"%s\n","    case(addr) ");


for(i=0;i<1024;i++)
  {
  	data=(int) (sin(2*3.1415926*i/4096)*32767+0.5);
  	data &=0x0000ffff;
  
  	fprintf(fp,"%s%d%s%d%s\n","     ",i,":dout=	16'd",data,";");	 
  }
       
fprintf(fp,"%s\n","    endcase ");    
fprintf(fp,"%s\n","endmodule");     
fclose(fp);
}
