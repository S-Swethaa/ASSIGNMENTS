`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 09:38:43 PM
// Design Name: 
// Module Name: FUNCTION_13_TB
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


module FUNCTION_14_TB();
reg [7:0]a;
wire logical_and_out;
FUNCTION_14 uut(.a(a),.logical_and_out(logical_and_out));

integer i;
initial begin
for(i=0;i<256;i=i+1)begin
a=i;
#1;
$display("a=%b,logical_and_out=%b",a,logical_and_out);
end
$finish;
end

endmodule
