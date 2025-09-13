`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: swetha sankar
// 
// Create Date: 09/09/2025 09:07:58 PM
// Design Name: Write a function that multiplies two numbers without using *.
// Module Name: FUNCTION_13
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


module FUNCTION_13(
input wire [7:0]a,b,
output wire [15:0]mul_out);

function [15:0]multiplication;
input [7:0]x,y;
integer i;
begin
multiplication=0;
for(i=0;i<8;i=i+1)begin
  if(y[i])
   multiplication=multiplication+(x<<i);
   end
   end
   endfunction
   
   assign mul_out=multiplication(a,b);
endmodule
