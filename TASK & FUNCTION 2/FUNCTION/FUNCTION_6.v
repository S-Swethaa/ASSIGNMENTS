`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 04:13:30 PM
// Design Name: Write a function that calculates the square of a number.
// Module Name: FUNCTION_6
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


module FUNCTION_6(
input wire [7:0]a,
output wire [15:0]square);

function [15:0]sq_num;
input [7:0]x;
begin
sq_num=x**2;
end
endfunction

assign square=sq_num(a);
endmodule
