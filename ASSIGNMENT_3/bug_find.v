`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 07:41:05 PM
// Design Name: 
// Module Name: bug_find
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


module bug_find();
parameter WIDTH = 8;
  initial $display("WIDTH = %0d", WIDTH);
endmodule

module top;
  test #( .WIDTH(10) ) OUT ();
endmodule


