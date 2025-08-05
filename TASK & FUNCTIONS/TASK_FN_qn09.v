`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 03:39:36 PM
// Design Name: 
// Module Name: TASK_FN_qn09
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


module TASK_FN_qn09();
reg [3:0]x,y;
reg [7:0]s;
reg [7:0]se;

task calculate_sum;
input [3:0] x1, y1;
output [7:0] total;
begin
total = x1 + y1;
end
endtask

function [7:0]calculate_mul;
input [3:0]a,b;
begin
calculate_mul=a*b;
end
endfunction

task final_sum_mul(input [3:0]c,input[3:0]d,output[7:0]s,se);
reg [7:0]temp,temp1;
begin
calculate_sum(c,d,temp);
s=temp*2;
temp1=calculate_mul(c,d);
se=temp1*2;
end
endtask

initial begin
x=10;
y=5;
final_sum_mul (x,y,s,se);
$display("sum=%d",s);
$display("mul=%d",se);
end
endmodule
