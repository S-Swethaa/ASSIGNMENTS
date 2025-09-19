`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 02:07:39 PM
// Design Name: 
// Module Name: TESTBENCH_A_DFF
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


module TESTBENCH_A_DFF(
input clk,d,areset,
output reg q
    );
    
    always @(posedge clk)begin
    if(areset)
    q<=0;
    else
    q<=d;
    end
    
endmodule
