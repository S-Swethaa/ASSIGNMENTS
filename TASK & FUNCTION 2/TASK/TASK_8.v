`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 02:33:29 PM
// Design Name: 
// Module Name: TASK_8-Design a task that accepts an 8-bit input and outputs its binary reversed form.
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


module TASK_8;
reg [7:0]a;
reg [7:0]reversed_binary;

task ip_binary;
input [7:0]x;
//output [7:0]out;
output [7:0]out_1;
integer i;
begin
for(i=0;i<8;i=i+1)begin
out_1[i]=x[7-i];
end
end
endtask

initial begin
a=8'd15;
ip_binary(a,reversed_binary);
end







endmodule
