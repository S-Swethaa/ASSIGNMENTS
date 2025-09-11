`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 03:39:21 PM
// Design Name: 
// Module Name: TASK_10
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


module TASK_10;
reg [7:0]w,x,y,z;
reg [7:0]returns_maximum;
/*
task ip;
input [7:0]a,b,c,d;
output [7:0]out;
begin
//out={a,b,c,d};
end
endtask
*/
task finding_max;
input [7:0]a,b,c,d;
output[7:0]max;
//reg temp;
begin
max=a;
if(max<b)begin
max=b;
  if(max<c)begin
    max=c;
  end
  if(max<d)begin
    max=d;
  end
end
end
endtask

initial begin
w=8'd220;
x=8'd221;
y=8'd255;
z=8'd241;
finding_max(w,x,y,z,returns_maximum);
end


endmodule
