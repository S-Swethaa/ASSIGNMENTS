`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 10:48:27 PM
// Design Name: Implement a function that shifts input right by n bits.
// Module Name: FUNCTION_17
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


module FUNCTION_17(
input wire [7:0]a,
input wire [2:0]n,
output wire [7:0]shift_right_n);

function [7:0]shifting;
input [7:0]x;
input [2:0]sh;
begin
shifting =x>>sh;
 end
 endfunction
 
 assign shift_right_n=shifting(a,n);
 

endmodule
