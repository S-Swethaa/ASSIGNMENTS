`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 11:06:07 PM
// Design Name: 
// Module Name: question_21
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


module question_21(p,a,b,c);
output p;
input a,b,c;
wire q,r;
assign c=0;
assign q=!((!a) && b && (!c));
assign r= !(a && (!b) && (!c));
and G1(p,q,r);
endmodule

