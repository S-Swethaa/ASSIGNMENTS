`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 03:58:20 PM
// Design Name: 
// Module Name: four_to_2encoder_conditional_operator
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


module four_to_2encoder_conditional_operator(
input [3:0]y0,y1,y2,y3,
output [1:0]out);

 assign out= (y0==4'b0001)? 2'b00:
             (y1==4'b0010)? 2'b01:
             (y2==4'b0100)? 2'b10:
             (y3==4'b1000)? 2'b11:2'bxx;

endmodule
