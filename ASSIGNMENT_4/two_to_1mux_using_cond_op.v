`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 09:44:43 AM
// Design Name: 
// Module Name: two_to_1mux_using_cond_op
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


module two_to_1mux_using_cond_op(
input a0,a1,
input s0,
output y0);

assign y0=(s0==0)?a0:a1;


endmodule
