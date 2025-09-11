`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 05:19:34 PM
// Design Name: 
// Module Name: TASK_12-Create a task to simulate a left circular shift of a register value.
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


module TASK_12;
reg [7:0]x;
reg [7:0]left_circular_shift;

task l_c_s;
input [7:0]a;
output [7:0]left_cir_shift;
begin
left_cir_shift= {a[6:0], a[7]}; 
end
endtask

initial begin
x=8'b1010_1010;
l_c_s(x,left_circular_shift);
#10;
x=8'b1110_1010;
l_c_s(x,left_circular_shift);
end
endmodule
