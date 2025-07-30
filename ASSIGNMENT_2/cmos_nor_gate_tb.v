`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 06:41:31 PM
// Design Name: 
// Module Name: cmos_nor_gate_tb
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


module cmos_nor_gate_tb();
reg a,b;
wire f;

cmos_nor_gate uut(.a(a),
.b(b),
.f(f));

initial begin
a=0;b=0;
#4
a=0;b=1;
#4
a=1;b=0;
#4
a=1;b=1;
#4
$finish;
end
endmodule
