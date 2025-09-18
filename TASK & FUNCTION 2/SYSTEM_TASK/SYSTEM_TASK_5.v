`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 11:27:32 AM
// Design Name: Use $time and $realtime to print simulation time during execution.
// Module Name: SYSTEM_TASK_5
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


module SYSTEM_TASK_5(
output reg q
);
reg d,clk;
always @(posedge clk)begin
q<=d;
$strobe("time=%0t,Real time=%0f,d=%b,q=%b,clk=%b",$time,$realtime,d,q,clk);
end
 always #5 clk=~clk;
 initial begin
clk=0;d=0;#10;
d=1;#10.5;
$finish;
end
endmodule
