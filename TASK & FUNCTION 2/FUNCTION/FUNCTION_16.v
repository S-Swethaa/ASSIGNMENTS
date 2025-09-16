`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: swetha sankar
// 
// Create Date: 09/09/2025 10:26:18 PM
// Design Name: Create a function that implements a multiplexer (selects 1 of 4 inputs).
// Module Name: FUNCTION_16
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


module FUNCTION_16(
input wire [3:0]a,
input wire [1:0]sel,
output wire mux);

function automatic [1:0]mux_out;
input [3:0]x;
input [1:0]s;
begin
case(sel)
 2'b00:mux_out=x[0];
 2'b01:mux_out=x[1];
 2'b10:mux_out=x[2];
 2'b11:mux_out=x[3];
 endcase
 end
 endfunction
 
 assign mux=mux_out(a,sel);
 


 
endmodule
