`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: swetha sankar
// 
// Create Date: 09/09/2025 06:10:18 PM
// Design Name: Write a function to compute the absolute value of a signed input.
// Module Name: FUNCTION_11
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


module FUNCTION_11(
input signed [7:0]a,
output signed [7:0]signed_out
    );
    
function signed [7:0]out;
input signed [7:0]x;
begin
if(x<0)begin
 out=~x;
 end else
 out=x;
 end
 endfunction
 
 assign signed_out=out(a);
 
endmodule
