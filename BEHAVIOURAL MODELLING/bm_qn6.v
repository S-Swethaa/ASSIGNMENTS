`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 06:13:58 AM
// Design Name: 
// Module Name: bm_qn6
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


module bm_qn6(
  input  [7:0] d,        
  input  [2:0] s,      
  output reg y        
);

integer i;

always @(*) begin
  y = 0;
  for (i = 0; i < 8; i = i + 1) begin
    if (s == i)
      y = d[i];
  end
end

endmodule

