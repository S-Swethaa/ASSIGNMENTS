`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 10:16:26 AM
// Design Name: 
// Module Name: TASK_FN_qn01
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


module TASK_FN_qn01();
reg [7:0] a, b, c;
reg [7:0] sum;

task calculate_sum;
input [7:0] x, y, z;
output [7:0] total;
begin
total = x + y + z;
end
endtask

initial begin
a = 5;
b = 10;
c = 15;
calculate_sum(a, b, c, sum);
$display("Sum: %d", sum);
end
endmodule
