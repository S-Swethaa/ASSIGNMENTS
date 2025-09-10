`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 04:59:45 PM
// Design Name: Implement a function to compute even parity using XOR.
// Module Name: FUNCTION_8
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


module FUNCTION_8(
input wire [7:0]a,
output wire even_parity
    );
    
function automatic [1:0] e_parity;
input[7:0]x;
begin
e_parity=0;
e_parity=^x;
 if(e_parity==1'b1)
  e_parity=1;
 
end
endfunction

assign even_parity=e_parity(a);
endmodule
