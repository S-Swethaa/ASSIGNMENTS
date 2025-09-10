`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 02:49:20 PM
// Design Name: 
// Module Name: FUNCTION_4_TB
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


module FUNCTION_4_TB();
reg [7:0]a;
wire prime_number;

FUNCTION_4 uut(.a(a),.prime_number(prime_number));

initial begin
a=8'd120;#2;
a=8'd7;#5;
a=8'd37;#7;
a=8'd12;#5;
a=8'd43;#5;
a=8'd2;#5;
$display("a=%b,prime_number=%b",a,prime_number);
$finish;
end

endmodule
