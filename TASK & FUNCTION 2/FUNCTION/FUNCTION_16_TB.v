`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 10:40:17 PM
// Design Name: 
// Module Name: FUNCTION_16_TB
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


module FUNCTION_16_TB();
reg [3:0]a;
reg [1:0]sel;
 wire mux;
 
FUNCTION_16 uut(.a(a),.sel(sel),.mux(mux));

initial begin
a=4'd10;
sel=2'd0;#1;
sel=2'd1;#1;
sel=2'd2;#1;
sel=2'd3;#1;
$display("a=%b,sel=%b, mux=%b", a,sel, mux);

$finish;
end

 
endmodule
