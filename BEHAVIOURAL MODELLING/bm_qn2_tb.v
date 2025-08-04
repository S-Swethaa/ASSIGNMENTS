`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 04:00:09 PM
// Design Name: 
// Module Name: bm_qn2_tb
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


module bm_qn2_tb();
reg c,din;
wire y3,y2,y1;

bm_qn2 dut(.c(c),.din(din),
.y3(y3),
.y2(y2),
.y1(y1));
always #5 c=~c;
initial begin
c=0;
din=0;
#10
din=1;
#10
din=0;
#5
din=1;
#10
$finish;
end
endmodule

