`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 08:18:07 AM
// Design Name: 
// Module Name: TASK_14-Create a task to toggle a clock signal 10 times with a delay of 5 time units.
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


module TASK;
reg clk;

task generate_clk_with_delay;
integer i;
begin
for(i=0;i<10;i=i+1)begin
#5 clk=~clk;
end
end
endtask

initial begin
clk=0;
$display("Toggling clk 10 times with 5 time unit delay...");
generate_clk_with_delay;
$finish;
end


endmodule
