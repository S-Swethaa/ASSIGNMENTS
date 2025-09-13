`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 08:43:06 PM
// Design Name: 
// Module Name: FUNCTION_12_DESIGN
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


module FUNCTION_12_DESIGN(
input wire [7:0]a,
output wire [7:0]reverse_bit
    );
    
 function [7:0]bit;
 input [7:0]x;
 integer i;
 begin
 for(i=0;i<8;i=i+1)begin
   bit[i]=x[7-i];
   end
   end
   endfunction
   
   assign reverse_bit=bit(a);
 
endmodule
