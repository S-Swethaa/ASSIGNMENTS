`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 11:34:02 PM
// Design Name: 
// Module Name: full_adder_assign
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


module full_adder_assign(
input a,b,c_in,
output c_out,sum
    );
    
    assign {c_out, sum} = a + b + c_in;
    
endmodule
