`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 09:32:22 PM
// Design Name: Create a function that performs a logical AND on all bits of a bus.
// Module Name: FUNCTION_14
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


module FUNCTION_14(
input wire [7:0]a,
output wire logical_and_out);

function automatic bitwise_and;
input [7:0]x;
integer i;
begin
bitwise_and=1'b1;
for(i=0;i<8;i=i+1)begin
 bitwise_and=bitwise_and&x[i];
 end
 end
 endfunction
 
 assign logical_and_out=bitwise_and(a);
 
endmodule
