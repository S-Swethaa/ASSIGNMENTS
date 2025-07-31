`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 10:16:39 AM
// Design Name: 
// Module Name: demux_4x1using_assign_enable_tb
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


module demux_4x1using_assign_enable_tb();
reg a;
reg [1:0]s;
reg en;
wire y0,y1,y2,y3;

demux_4x1using_assign_enable uut(.a(a),
.s(s),
.en(en),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3));

initial begin
en=0;s=2'b00;a=1;
#4
en=1;s=2'b00;a=1;
#4
en=1;s=2'b01;a=0;
#4
en=1;s=2'b10;a=1;
#4
en=1;s=2'b11;a=1;
#4
$finish;
end


endmodule
