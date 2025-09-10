`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 12:52:33 PM
// Design Name: Create a function that returns the XOR of all bits of an input (odd parity).
// Module Name: FUNCTION_2
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


module FUNCTION_2(
input wire [7:0]a,
output wire odd_parity);
    
function odd;
input [7:0]x;
reg even_parity;
begin
even_parity=^x;
odd=~even_parity;
end
endfunction

assign odd_parity=odd(a);
endmodule
