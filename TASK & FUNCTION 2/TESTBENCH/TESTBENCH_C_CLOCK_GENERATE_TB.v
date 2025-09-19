`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 02:38:21 PM
// Design Name: 
// Module Name: TESTBENCH_C_CLOCK_GENERATE_TB
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


module TESTBENCH_C_CLOCK_GENERATE_TB( );
reg clk;
wire clk_out;

TESTBENCH_C_CLOCK_GENERATE uut(.clk(clk),.clk_out(clk_out));

always #5 clk=~clk;
initial begin
clk=0;
#100;
clk=1;
#2000;
$finish;
end


endmodule
