`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 02:36:38 PM
// Design Name: 
// Module Name: TESTBENCH_C_CLOCK_GENERATE
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


module TESTBENCH_C_CLOCK_GENERATE(
input clk,
output clk_out
    );
    
    assign #5clk_out=~clk;
endmodule
