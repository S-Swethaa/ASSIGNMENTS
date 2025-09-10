`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 05:36:58 PM
// Design Name: Write a function to compare two inputs and return 1 if equal.
// Module Name: FUNCTION_10
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


module FUNCTION_10(
input wire [7:0]a,b,
output wire equal);

function [1:0]two_ip_are_equal_or_not;
input [7:0]a,b;
begin
two_ip_are_equal_or_not=0;
if(a==b)begin
  two_ip_are_equal_or_not=1'b1;
  end else
  two_ip_are_equal_or_not=1'b0;
  end
  endfunction
  
 assign equal =two_ip_are_equal_or_not(a,b);
endmodule
