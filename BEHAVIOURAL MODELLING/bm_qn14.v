`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 07:59:53 AM
// Design Name: 
// Module Name: bm_qn14
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
/*reg q, d, clk;
always @(posedge clk) begin
#20 q = d;
end
initial begin
clk = 0;
d = 1;
#25 clk 1;
end initial
$display("q = %b", q);*/
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bm_qn14(
  output reg a, b);
  
  reg clock = 1'b0;

  initial forever
   #10 clock = ~clock;

always @ (posedge clock) begin
  a <= b; 
end

always @ (posedge clock) begin
  b <= a; 
  end
  

endmodule

