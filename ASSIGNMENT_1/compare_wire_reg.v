`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 09:30:00 PM
// Design Name: 
// Module Name: compare_wire_reg
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


module compare_wire_reg(
input a1,a2,
output wire wire_y);

assign wire_y = a1 & a2;
endmodule

module reg_procedural(
 input a1,a2,
 output reg reg_y);

always @(a1 or a2)begin
reg_y= a1 & a2;
end
endmodule
