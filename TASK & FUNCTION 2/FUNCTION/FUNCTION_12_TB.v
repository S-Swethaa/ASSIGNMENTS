`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 08:48:50 PM
// Design Name: 
// Module Name: FUNCTION_12_TB
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


module FUNCTION_12_TB();
reg [7:0]a;
wire [7:0]reverse_bit;
FUNCTION_12_DESIGN uut(.a(a),.reverse_bit(reverse_bit));
integer i;
initial begin
for(i=0;i<8;i=i+1)begin
 a=$random % 256;
 #1;
 $display("a=%b,reverse_bit=$b",a,reverse_bit);
 end
 $finish;
 end

endmodule
