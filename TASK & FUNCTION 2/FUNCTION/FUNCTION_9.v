`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 05:19:34 PM
// Design Name: Create a function that returns the number of 1's in an 8-bit input.
// Module Name: FUNCTION_9
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


module FUNCTION_9(
input [7:0]a,
output [3:0]number_of_ones);

function [3:0]no_of_one;
input [7:0]x;
integer i;
begin
no_of_one=0;
for(i=0;i<8;i=i+1)begin
  if(x[i]==1'b1)
  no_of_one=no_of_one+1;
  end
  end
  endfunction
  
  assign number_of_ones=no_of_one(a);
endmodule
