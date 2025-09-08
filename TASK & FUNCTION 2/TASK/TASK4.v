`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 11:43:04 AM
// Design Name: 
// Module Name: TASK4-Write a task to calculate the square of an 8-bit input number.
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


module TASK4;
reg [7:0]a;
reg [15:0]square_out;

task perform_square;
input [7:0]x;
output [15:0]square;
begin
square=a**2;
end
endtask

initial begin
a=20;
perform_square(a,square_out);
#21;
a=200;
perform_square(a,square_out);
#21;
a=255;
perform_square(a,square_out);
#21;
end
endmodule
