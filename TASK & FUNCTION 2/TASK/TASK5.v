`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 11:54:56 AM
// Design Name: 
// Module Name: TASK5-Create a task that performs both addition and subtraction and returns two outputs.
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


module TASK5;
reg [7:0]a,b;
reg [8:0]addtion,subtraction;

task perform_add_sub;
input [7:0]x,y;
output [8:0]add_out,sub_out;
begin
add_out=x+y;
sub_out=x-y;
end
endtask

initial begin
a=250;
b=25;
perform_add_sub(a,b,addtion,subtraction);end
endmodule
