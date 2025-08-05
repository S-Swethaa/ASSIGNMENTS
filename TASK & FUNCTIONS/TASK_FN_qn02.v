`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 10:31:58 AM
// Design Name: 
// Module Name: TASK_FN_qn02
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


module TASK_FN_qn02();
reg [7:0]a, b;
reg [7:0]sum;

function [7:0]calculate_sum;
input [7:0]x,y;
begin
calculate_sum = x + y ;
end
endfunction

initial begin
a = 5;
b = 10;
sum = calculate_sum(a,b);//only inputs in function call
end
endmodule
