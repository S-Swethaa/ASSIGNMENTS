`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 12:05:04 AM
// Design Name: 
// Module Name: FUNCTION_20_TB
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


module FUNCTION_20_TB();
reg [7:0]a,b;
wire [15:0]power_of_out;

FUNCTION_20 uut(.a(a),.b(b),.power_of_out(power_of_out));

initial begin
a=8'd5;
b=8'd2;
#1;
$display("a=%b,b=%b,power_of_out=%b",a,b,power_of_out);
$finish;
end

endmodule
