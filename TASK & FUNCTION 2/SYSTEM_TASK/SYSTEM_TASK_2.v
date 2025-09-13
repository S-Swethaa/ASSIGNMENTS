`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:SWETHA SANKAR 
// 
// Create Date: 09/10/2025 10:24:58 AM
// Design Name: Demonstrate $monitor to track signal changes in a clock and data signal.
// Module Name: SYSTEM_TASK_2
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


module SYSTEM_TASK_2();
reg [7:0]data;
reg clk;

always #5 clk=~clk;
integer i;
initial begin
clk=0;
data=0;
$monitor("at time=0%t,data=%d,clk=%d",$time,data,clk);
for(i=0;i<256;i=i+1)begin
data=$urandom;
#10;
end
#10; $finish;
end
endmodule
