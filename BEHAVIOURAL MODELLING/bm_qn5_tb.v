`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 06:02:48 AM
// Design Name: 
// Module Name: bm_qn5_tb
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


module bm_qn5_tb();
  reg [3:0] a;
  wire [1:0] y;

  bm_qn5 uut(.a(a), .y(y));

  initial begin
    $monitor("Time=%0t a=%b y=%d", $time, a, y);

    a = 4'b0000; 
    #10;
    a = 4'b0001;
     #10;
    a = 4'b0010;
     #10;
    a = 4'b0100;
     #10;
    a = 4'b1000; 
    #10;
  
    $finish;
  end
endmodule

