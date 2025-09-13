`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 06:25:33 PM
// Design Name: 
// Module Name: FUNCTION_11_TB
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


module FUNCTION_11_TB();
reg [7:0]a;
wire [7:0]signed_out;
FUNCTION_11 uut(.a(a),.signed_out(signed_out));

integer i;
initial begin
for (i=0;i<8;i=i+1)begin
 a=$random;
 a=i;#1;
 $display("a=%b,signed_out=%b",a,signed_out);
 end
 $finish;
 end
 

endmodule
