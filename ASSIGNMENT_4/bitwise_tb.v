`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 10:40:02 PM
// Design Name: 
// Module Name: bitwise_tb
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


module bitwise_tb();
reg [3:0]x,y;
wire [3:0] d0,d1,d2,d3,d4;

bitwise_op uut(.x(x),
.y(y),
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.d4(d4));
 
 initial begin
    x = 4'b1100;
    y = 4'b1010;
    #1; 
   $display("x = %b", x);
    $display("y = %b", y);
    $display("d0 = %b", d0);
    $display("d1 = %b", d1);
    $display("d2 = %b", d2);
    $display("d3 = %b", d3);
    $display("d4 = %b", d4);
    $display;
  end
endmodule
