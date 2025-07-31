`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 10:53:47 AM
// Design Name: 
// Module Name: ninebit_even_parity_generator
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


module ninebit_even_parity_generator(
input [8:0]x,
output [8:0]ep,op);
    assign ep = ^x;
     assign op = ~ep;
endmodule
