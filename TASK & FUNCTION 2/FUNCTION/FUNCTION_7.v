`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 04:30:14 PM
// Design Name: 
// Module Name: FUNCTION_7
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


module FUNCTION_7(
input wire [7:0]a,b,
output wire [7:0]x,y
    );
function [15:0]return_values;
input[7:0]c,d;
begin
return_values={c,d};
end
endfunction

assign {x,y}=return_values(a,b);
endmodule
