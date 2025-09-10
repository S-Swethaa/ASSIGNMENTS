`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 03:50:54 PM
// Design Name: 
// Module Name: FUNCTION_5
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


module FUNCTION_5(
input wire[7:0]a,b,
output wire [7:0]difference
    );
    
 function [7:0]diff;
 input [7:0]x,y;
 begin
 diff=x-y;
 end
 endfunction
 
 assign difference= diff(a,b);  
endmodule
