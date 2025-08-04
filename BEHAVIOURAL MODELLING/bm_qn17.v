`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 07:17:25 AM
// Design Name: 
// Module Name: bm_qn17
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


module bm_qn17();
integer alpha,beta;


  initial begin
    alpha = 4;
    beta = 3;
    beta <= beta + alpha;
    alpha <= alpha + beta;
    alpha = alpha + 2;
    $display("Alpha=%0d Beta=%0d", alpha, beta);
  end
endmodule

