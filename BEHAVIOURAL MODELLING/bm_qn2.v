`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 03:56:40 PM
// Design Name: 
// Module Name: bm_qn2
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


module bm_qn2(
input c,din,
output reg y3,
reg y1,y2);
always@(posedge c)
begin
y1 <= din;
y2 <= y1;
y3 <= y2;
end

endmodule
