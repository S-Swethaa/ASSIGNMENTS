`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 12:44:13 PM
// Design Name: 
// Module Name: FUNCTION_1_TB
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


module FUNCTION_1_TB();
reg [7:0]a,b;
wire [8:0]sum_of_twobits;

FUNCTION_1 uut(.a(a),.b(b),.sum_of_twobits(sum_of_twobits));

initial begin
a=8'd25;
b=8'd5;
$display("a=%b,b=%b,sum_of_twobits=%b",a,b,sum_of_twobits);#12;
$finish;
end
endmodule
