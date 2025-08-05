`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 06:39:14 PM
// Design Name: 
// Module Name: TASK_FN_qn7
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


module TASK_FN_qn7(
output reg [4:0]y,
input [4:0]x);
function [4:0] right_shifting(input[4:0]x);
//input[4:0]x;
//x=5'b00110;
right_shifting=(x>>1);
endfunction

//initial begin
//x=5'b11011;end
always @(*) begin
y=right_shifting(x);
end
endmodule
