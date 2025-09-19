`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/12/2025 02:24:28 PM
// Design Name: Develop a testbench to test all input combinations of a full adder.
// Module Name: TESTBENCH_C_FULL_ADDER
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


module TESTBENCH_C_FULL_ADDER(
input [2:0]A,B,
input C,
output [2:0]sum,
output carry
    );
    
    assign {carry,sum}=A+B+C;
    
endmodule
