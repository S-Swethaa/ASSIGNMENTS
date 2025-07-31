`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 03:20:35 PM
// Design Name: 
// Module Name: two_4decoder_dataflow_activelow
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


module two_4decoder_dataflow_activelow(
input i0,i1,
output y0,y1,y2,y3);

assign y0=(i0|i1);
assign y1=(i0|~i1);
assign y2=(~i0|i1);
assign y3=(~i0|~i1);



endmodule
