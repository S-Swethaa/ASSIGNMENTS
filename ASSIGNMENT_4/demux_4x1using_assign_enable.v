`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 09:54:37 AM
// Design Name: 
// Module Name: demux_4x1using_assign_enable
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 0:y1):(s1==1:s0==0?y2:y3)));

// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module demux_4x1using_assign_enable(
input a,
input [1:0]s,
input en,
output y0,y1,y2,y3);

assign y0 = (en==1 && s == 2'b00) ? a : 0;
assign y1 = (en==1&& s == 2'b01) ? a : 0;
assign y2 = (en==1 && s == 2'b10) ? a : 0;
assign y3 = (en==1 && s == 2'b11) ? a : 0;


endmodule
