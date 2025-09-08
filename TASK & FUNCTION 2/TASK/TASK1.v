`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 11:06:02 AM
// Design Name: 
// Module Name: TASK1-Write a task to perform addition of two 8-bit numbers.
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


module TASK1;
 reg [7:0]a,b;
 reg [8:0]sum;

task calculate_sum;
input [7:0]x,y;
output [8:0]a;
begin 
a=x+y;
end 
endtask

initial begin
a=8'd240;
b=8'd22;
calculate_sum(a,b,sum);
end



endmodule
