`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 06:36:02 PM
// Design Name: 
// Module Name: cmos_nor_gate
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


module cmos_nor_gate(
input a,b,
output f,
wire w1);

supply1 vdd;
supply0 gnd;

pmos p1(w,vdd,a);
pmos p2(f,w,b);
nmos n1(f,gnd,a);
nmos n2(f,gnd,b);

endmodule
