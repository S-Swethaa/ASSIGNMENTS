`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 12:23:10 PM
// Design Name: 
// Module Name: TASK_FN_qn05
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


module TASK_FN_qn05();
reg [7:0]a,b;
reg [7:0]div,mul;

function [7:0]division;
input [7:0]a,b;
begin
division = a/b;
end
endfunction

function [7:0]multiplication;
input [7:0]a,b;
begin
multiplication = a%b;
end
endfunction

initial begin
a=10;
b=5;
div=division(a,b);
mul=multiplication(a,b);
end 
endmodule
