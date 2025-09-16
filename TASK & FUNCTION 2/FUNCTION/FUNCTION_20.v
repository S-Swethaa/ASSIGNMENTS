`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 11:58:33 PM
// Design Name: Implement a function that calculates a^b using loop (a to the power b).
// Module Name: FUNCTION_20
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


module FUNCTION_20(
input [7:0]a,b,
output [15:0]power_of_out
    );
    
function [15:0]powers;
input[7:0]x,y;
integer i;
begin
powers=1'b1;
for(i=0;i<y;i=i+1)begin
   powers=x*powers;
   end
   end
   endfunction
   
   assign power_of_out=powers(a,b);
endmodule
