`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 11:10:43 AM
// Design Name: 
// Module Name: TASK_18-Write a task that checks whether two 8-bit inputs are equal and sets a flag.
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


module TASK_18;
reg [7:0]a,b;
reg flag;

task two_input_are_eq_flagone;
input[7:0]x,y;
output out;
begin
if(a==b)begin
 out=1'b1;
 end else
 out=1'b0;
 end
 endtask
 
 initial begin
 a=8'd200;
 b=8'd200;
 two_input_are_eq_flagone(a,b,flag);
 $display("a=%b,b=%b,flag=%b",a,b,flag);
 #12;
 $finish;
 end
endmodule
