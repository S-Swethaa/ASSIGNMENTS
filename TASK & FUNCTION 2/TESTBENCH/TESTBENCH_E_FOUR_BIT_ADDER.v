`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 02:48:11 PM
// Design Name: 
// Module Name: TESTBENCH_E_FOUR_BIT_ADDER
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


module TESTBENCH_E_FOUR_BIT_ADDER(
input [3:0]a,b,
input cin,
output [3:0]sum,
output carry
    );

assign {carry,sum}=a+b+cin;




endmodule
