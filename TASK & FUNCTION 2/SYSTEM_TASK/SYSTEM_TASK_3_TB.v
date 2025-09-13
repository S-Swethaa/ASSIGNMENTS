`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 10:53:28 AM
// Design Name: 
// Module Name: SYSTEM_TASK_3_TB
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


module SYSTEM_TASK_3_TB();
reg [7:0]a,b;
wire [8:0]diff;
SYSTEM_TASK_3 uut(.a(a),.b(b),.diff(diff));

integer i,j;
initial begin
$monitor("time=%0t,a=%d,b=%d,diff=%d",$time,a,b,diff);
for(i=0;i<256;i=i+1)begin
 for(j=0;j<256;j=j+1)begin
  a=$urandom;
  b=$urandom;
  #1;
  $display("a=%d,b=%d,diff=%d",a,b,diff);
  end
  end
  $finish;
  end

endmodule
