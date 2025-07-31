`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 10:29:00 PM
// Design Name: 
// Module Name: bitwise_op
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


module bitwise_op(
  input  [3:0] x,y,
  output [3:0] d0, d1, d2, d3, d4
);
  assign d0 = ~x;
  assign d1 = x &y;
  assign d2 = x |y;
  assign d3 = x ^y;
  assign d4 = x ^~y; 
endmodule
