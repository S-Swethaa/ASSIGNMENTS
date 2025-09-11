`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 11:01:07 AM
// Design Name: 
// Module Name: TASK_17-Create a task that performs multiplication and outputs the result using $display.
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


module TASK_17;
reg [7:0]a,b;
reg [15:0]mul_out;

task perform_multiplication;
input [7:0]x,y;
output reg [15:0]z;
begin
z=x*y;
end
endtask

initial begin
a=8'd121;
b=8'd200;
perform_multiplication(a,b,mul_out);
$display ("a=%d,b=%d,mul_out=%d",a,b,mul_out);
$finish;
end

endmodule
