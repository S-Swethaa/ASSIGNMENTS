`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 11:59:09 AM
// Design Name: Write a function that returns the sum of two 8-bit inputs.
// Module Name: FUNCTION_1
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


module FUNCTION_1(
input wire [7:0]a,b,
output wire [8:0]sum_of_twobits);

function [8:0]perform_sum;
input reg [7:0]x,y;
begin
perform_sum=x+y;
end
endfunction

assign sum_of_twobits=perform_sum(a,b);

endmodule
