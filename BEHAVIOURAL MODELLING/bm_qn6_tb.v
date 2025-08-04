`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 06:20:27 AM
// Design Name: 
// Module Name: bm_qn6_tb
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


module bm_qn6_tb();
  reg [7:0] d;
  reg [2:0] s;
  wire y;

  bm_qn6 uut(.d(d), .s(s), .y(y));

  initial begin
    d = 4'b1000;
    for (s = 0; s < 8; s = s + 1) begin
      #5 
      $display("s = %0d, y = %b", s, y);
    end
  end
endmodule
