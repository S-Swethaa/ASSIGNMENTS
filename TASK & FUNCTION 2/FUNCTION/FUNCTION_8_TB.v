`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 05:04:03 PM
// Design Name: 
// Module Name: FUNCTION_8_TB
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


module FUNCTION_8_TB();
reg [7:0]a;
wire even_parity;
FUNCTION_8 uut(.a(a),.even_parity(even_parity));

integer i;
initial begin
for(i=0;i<=255;i=i+1)begin
 a=i;
 #45;
 $display("a=%b,even_parity=%b",a,even_parity);
 end
 $finish;
 
 end
endmodule
