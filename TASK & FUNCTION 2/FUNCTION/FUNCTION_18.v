`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 11:05:08 PM
// Design Name: 
// Module Name: FUNCTION_18
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


module FUNCTION_18(
input wire [7:0]a,
output wire [2:0]no_of_trailing_zeros
    );
function [2:0]trail_zero;
input [7:0]x;
integer i;
begin
trail_zero=0;
for(i=7;i>=0;i=i-1)begin
 if(x[i]==1'b0)
 trail_zero =trail_zero+1;
  else
  trail_zero=0;
  end
  end
  endfunction
  
  assign no_of_trailing_zeros=trail_zero(a);
endmodule
