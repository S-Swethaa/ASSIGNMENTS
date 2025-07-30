`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2025 09:56:39 AM
// Design Name: 
// Module Name: net_type_exp
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


module net_type_exp(
wand wand_x,
wor wor_y,
tri tri_z,
triand triand_s);
reg a=0,b=1,c=1,d=0;
assign #1 wand_x=a;
assign #1 wand_x=b;
assign #1 wor_y=c;
assign #1 wor_y=b;
assign #1 tri_z=d;

assign #1 triand_s=a;
assign #1 triand_s=b;

initial begin
$monitor("Time=%0t |wand_x=%b|wor_y=%b|tri_z=%b|triand_s=%b",$time,wand_x,wor_y,tri_z,triand_s);
end
endmodule
