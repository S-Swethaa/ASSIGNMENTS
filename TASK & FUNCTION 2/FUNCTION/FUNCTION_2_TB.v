`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 12:58:47 PM
// Design Name: 
// Module Name: FUNCTION_2_TB
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


module FUNCTION_2_TB();
reg [7:0]a;
wire odd_parity;
FUNCTION_2 uut(.a(a),.odd_parity(odd_parity));

initial begin
a=8'd200;
$display("a=%b,odd_parity=%b",a,odd_parity);#12;
$finish;
end

endmodule
