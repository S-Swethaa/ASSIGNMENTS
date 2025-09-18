`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 11:18:07 PM
// Design Name: 
// Module Name: SYSTEM_TASK_07
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


module SYSTEM_TASK_07();
reg [3:0]a,b    ;
wire [4:0]y;
assign y=a*b;

initial begin
a=4'd1;b=4'd5;#10;
a=4'd5;b=4'd5;#30;
a=4'd1;b=4'd12;#10;
$finish;
end



endmodule
