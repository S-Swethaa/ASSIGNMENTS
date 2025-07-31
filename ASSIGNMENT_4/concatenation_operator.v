`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 12:09:26 AM
// Design Name: 
// Module Name: concatenation_operator
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


module concatenation_operator(

  input  wire a,
  input  wire [1:0] b,
  input  wire [1:0] c,
  output wire [2:0] y
);
   assign y = {a, b[0], c[1]};
endmodule
