`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 04:11:58 PM
// Design Name: 
// Module Name: four_to_2encoder_conditional_tb
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


module four_to_2encoder_conditional_tb();
reg [3:0]y0,y1,y2,y3;
wire [1:0]out;

four_to_2encoder_conditional_operator uut(.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3),
.out(out));

initial begin

y0=4'b0001;y1=4'b1101;y2=4'b1110;y3=4'b1001;
#4
y0=4'b0011;y1=4'b0010;y2=4'b1110;y3=4'b0101;
#4
y0=4'b1001;y1=4'b1101;y2=4'b0100;y3=4'b1001;
#4
y0=4'b0101;y1=4'b1101;y2=4'b1110;y3=4'b1000;
#4
$finish;
end
endmodule
