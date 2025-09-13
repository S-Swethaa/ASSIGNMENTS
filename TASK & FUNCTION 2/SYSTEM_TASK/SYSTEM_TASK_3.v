`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 10:36:27 AM
// Design Name: 
// Module Name: SYSTEM_TASK_3
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


module SYSTEM_TASK_3(
input wire [7:0]a,b,
output wire [8:0]diff);

assign diff= a-b;
endmodule
