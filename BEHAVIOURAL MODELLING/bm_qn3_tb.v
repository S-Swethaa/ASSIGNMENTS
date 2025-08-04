`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 07:25:34 PM
// Design Name: 
// Module Name: bm_qn3_tb
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


module bm_qn3_tb();
reg c,din;
wire y3,y2,y1;

bm_qn3 dut(.c(c),.din(din),
.y3(y3),
.y2(y2),
.y1(y1));
always #5 c=~c;
initial begin
c=1;
din=0;
c=1;
din=1;
c=1;
din=1;
c=1;
din=1;
c=1;

$finish;
end
endmodule

