`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 11:06:58 AM
// Design Name: 
// Module Name: SYSTEM_TASK_4
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


module SYSTEM_TASK_4();
reg [7:0]a,b;
reg [10:0]sum;
integer i,j;
initial begin
//$monitor("time=%0t,reg a=%d,reg b=%d,sum=%d",$time,a,b,sum);
for( i=0;i<256;i=i+1)begin
 for(j=0;j<256;j=j+1)begin
 a=$urandom;
 b=$urandom;
 sum=a+b;
 #1;
 $display("time=%0t,reg a=%d",$time,a);
  $display("time=%0t,reg b=%d",$time,b);
   $display("time=0t,sum=%d",$time,sum);
   $strobe("time=%0t,reg a=%d,reg b=%d,sum=%d",$time,a,b,sum);

   end
   end
   $finish;
   end


endmodule

