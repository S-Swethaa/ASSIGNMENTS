`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2025 03:47:38 PM
// Design Name: 
// Module Name: bm_qn9
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


module bm_qn9;
reg d, en;
reg q;

always @(en) begin
if (en)
q = d;
end
initial begin
  $monitor($time, " en=%b d=%b q=%b", en, d, q);
d = 0; en = 0;
#5 d = 1;
#5 en = 1;
#5 d = 0;
#5;
  $finish;
end
endmodule

