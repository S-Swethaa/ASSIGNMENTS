`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2025 03:26:11 PM
// Design Name: 
// Module Name: fsm_assi_02
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


module fsm_assi_02(
input clk,reset,x,
output reg y);

parameter s0=3'd0,s1=3'd1,s2=3'd2,s3=3'd3,s4=3'd4;
reg [2:0]state,nextstate;

always @(posedge clk or posedge reset)begin
if(reset)
  state<=s0;
else
  state<=nextstate;
  end
  
  always @(*)begin
  nextstate=s0;
  y=1'b0;
  
  case(state)
  s0:begin
  y=1'b1;
  nextstate=x?s1:s0;
  end
  s1:nextstate=x?s4:s2;
  s2:nextstate=x?s0:s3;
  s3:nextstate=x?s3:s4;
  s4:nextstate=x?s2:s1;
  endcase
  end
endmodule
