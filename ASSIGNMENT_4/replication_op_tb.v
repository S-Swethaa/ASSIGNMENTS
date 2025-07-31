`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 10:15:17 AM
// Design Name: 
// Module Name: replication_op_tb
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


module replication_op_tb();
reg a;
reg [1:0]b,c;
wire [5:0]y;

replication_op uut(.a(a),
.b(b),
.c(c),
.y(y));

initial begin
a=0;b=1;c=2'b10;
#4
$finish;
end
endmodule
