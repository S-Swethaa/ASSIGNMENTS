`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 09:38:26 AM
// Design Name: 
// Module Name: TASK_FN_qn13
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
module TASK_FN_qn13;
function [7:0]double;
input [7:0]x;
begin
double=x*3;
end
endfunction

task call_function;
input[7:0]a;
output [7:0] result;
begin
result=double(a);
end
endtask

reg [7:0] val,res;
initial begin
val=8'b00000001;
call_function(val,res);
$display("val=%d result=%b",val,res);
end
endmodule

