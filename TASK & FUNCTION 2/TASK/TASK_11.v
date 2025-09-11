`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 04:42:58 PM
// Design Name: 
// Module Name: TASK_11-Write a task that implements a simple delay-based blinking LED simulation.
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


module TASK_11;
reg a;
reg led_blink;

task delay_led_blink;
input din;
output reg led_out;
integer i;
begin
for(i=0;i<5;i=i+1)begin
led_out=din;#2
led_out=~din;#2;end
end
endtask

initial  begin
a=1;
 delay_led_blink(a,led_blink);
 end             


endmodule
