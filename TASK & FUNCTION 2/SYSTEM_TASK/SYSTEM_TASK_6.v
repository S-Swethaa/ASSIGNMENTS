`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 11:36:58 AM
// Design Name: Write a simulation that pauses at time 20 using $stop.
// Module Name: SYSTEM_TASK_6
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


module SYSTEM_TASK_6(
output reg q
    );
reg d,clk;
always @(posedge clk)begin
q<=d;
end
always #5 clk=~clk;
initial begin
d=0;clk=0;#1;
d=1;clk=1;
#20; $stop;
d=0;clk=1;#1;
d=1;clk=1;


$finish;
end



endmodule
