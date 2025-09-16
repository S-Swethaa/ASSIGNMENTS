`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 11:50:38 PM
// Design Name: 
// Module Name: FUNCTION_19_TB
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


module FUNCTION_19_TB;
reg [4:0]binary;
wire [4:0]gray;

FUNCTION_19 uut(.binary(binary),.gray(gray));

integer i;
initial begin
for(i=0;i<16;i=i+1)begin
binary=i;
#1;
$display("binary=%b,gray=%b",binary,gray);end
$finish;
end

endmodule
