`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/10/2025 09:48:08 AM
// Design Name: Use $display to print values of two registers and their sum.
// Module Name: SYSTEM_TASK_1
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


module SYSTEM_TASK_1();
reg [7:0]a,b;
reg [10:0]sum;
integer i,j;
initial begin
for( i=0;i<256;i=i+1)begin
 for(j=0;j<256;j=j+1)begin
 a=$urandom;
 b=$urandom;
 sum=a+b;
 #1;
 $display("time=%0t,reg a=%d",$time,a);
  $display("time=%0t,reg b=%d",$time,b);
   $display("time=0t,sum=%d",$time,sum);
   end
   end
   $finish;
   end


endmodule
