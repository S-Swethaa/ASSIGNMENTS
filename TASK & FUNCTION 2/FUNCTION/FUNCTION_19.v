`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 11:39:52 PM
// Design Name: Create a function that counts trailing zeros in a binary number.
// Module Name: FUNCTION_19
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


module FUNCTION_19(
input wire [4:0]binary,
output wire [4:0]gray
    );
    function [4:0]b_to_gray;
    input [4:0]x;
    integer i;
    begin
    b_to_gray[4]=x[4];
    for(i=3;i>=0;i=i-1)begin
    b_to_gray[i]=x[i+1] ^x[i];
    end
    end
    endfunction  
assign gray=b_to_gray(binary);

endmodule
