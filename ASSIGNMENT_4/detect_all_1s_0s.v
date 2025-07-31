`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 11:54:26 AM
// Design Name: 
// Module Name: detect_all_1s_0s
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


module detect_all_1s_0s(
input [4:0]x,
output zero,one);
    assign zero = ~(|x); 
    assign one = &x;
endmodule
