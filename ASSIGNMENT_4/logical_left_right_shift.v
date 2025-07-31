`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 03:44:21 PM
// Design Name: 
// Module Name: logical_left_right_shift
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


module logical_left_right_shift(
input [3:0]x,
output [3:0] ll_shift,lr_shift);

assign ll_shift=(x<<1);
assign lr_shift=(x>>1);

endmodule
