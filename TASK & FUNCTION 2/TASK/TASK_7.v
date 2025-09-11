`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 12:41:28 PM
// Design Name: 
// Module Name: TASK_7-Write a task that calculates the factorial of a number using a loop (not recursion).
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


module TASK_7;
reg [7:0]a;
reg [15:0]factorial;

task perform_factorial;
input [7:0]x;
output [15:0]fact;
integer i;
begin
fact=16'h0001;
for (i=1;i<=x;i=i+1)begin
fact=fact*i;
end
end
endtask

initial begin
a=5;
perform_factorial(a,factorial);end



endmodule
