`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 02:11:48 PM
// Design Name: 
// Module Name: four_to_1mux_conditional_operator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module four_to_1mux_conditional_operator(
input wire s1,s0,
input wire y0,y1,y2,y3,
output reg out );

/*assign out = (s1 == 1'b0) ? ((s0 == 1'b0) ? y0 : y1) :
                              ((s0 == 1'b0) ? y2 : y3);*/
always @(*) begin
if(s1==0)
  if(s0==0)
  out=y0;
  else
  out=y1;

else
 if(s1==1)
  if(s0==0)
  out=y2;
  else
  out=y3;
  end
endmodule
