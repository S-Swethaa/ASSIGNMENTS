`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 12:23:17 AM
// Design Name: 
// Module Name: replication_op
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


module replication_op(
input a,
input [1:0]b,
input [1:0]c,
output [5:0]y);
    assign y = {a, {4{b[0]}}, c[1]};
endmodule
