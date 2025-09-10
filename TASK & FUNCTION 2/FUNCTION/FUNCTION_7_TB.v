`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 04:36:37 PM
// Design Name: 
// Module Name: FUNCTION_7_TB
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


module FUNCTION_7_TB( );
reg [7:0]a,b;
wire [7:0]x,y;

FUNCTION_7 uut(.a(a),.b(b),.x(x),.y(y));
/*integer i,j;
initial begin
begin
for(i=0;i<=255;i=i+1)begin
  for(i=0;i<=255;i=i+1)begin
   a=i;
   b=j;
   #45;
   $display("a=%b,b=%b,x=%b,y=%b",a,b,x,y);
   $finish;
   end
   end
   end
   end*/
   initial begin
   a=8'd220;
   b=8'd125;
   #1;
      $display("a=%b,b=%b,x=%b,y=%b",a,b,x,y);
      $finish;
     
      end

   



endmodule
