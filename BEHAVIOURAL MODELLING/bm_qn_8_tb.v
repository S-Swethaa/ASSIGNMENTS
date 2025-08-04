`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 07:03:05 AM
// Design Name: 
// Module Name: bm_qn_8_tb
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


module bm_qn_8_tb();
reg clk,rst;
bm_qn8 utt(.clk(clk),.rst(rst));
initial
begin
clk = 0;
forever #5clk =~clk; 
end
initial
begin
rst = 1;
#10;
repeat(3)@(negedge clk);
rst =0;
#10;
end
endmodule
