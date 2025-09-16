`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 11:23:22 PM
// Design Name: 
// Module Name: FUNCTION_18_TB
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


module FUNCTION_18_TB( );
 reg [7:0]a;
 wire [2:0]no_of_trailing_zeros;
 
 FUNCTION_18 uut(.a(a),.no_of_trailing_zeros(no_of_trailing_zeros));
 integer i;
 initial begin
 for (i=0;i<256;i=i+1)begin
 a=i;
 #1;
 $display("a=%b, no_of_trailing_zeros=%d", a,no_of_trailing_zeros );
 end
 $finish;
 end
endmodule
