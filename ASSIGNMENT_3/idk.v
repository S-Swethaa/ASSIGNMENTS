`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 07:25:47 PM
// Design Name: 
// Module Name: idk
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



module test();
 parameter WIDTH = 8;
  initial $display("WIDTH = %0d", WIDTH);
endmodule

module top;
  test #(16) OUT();  
endmodule
