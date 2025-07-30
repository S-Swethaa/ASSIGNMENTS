`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2025 10:39:08 AM
// Design Name: 
// Module Name: reg_assignment_tb
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


module reg_assignment_tb();
reg [7:0]data;
wire [7:0]y;

reg_assignment uu1(.data(data),
.y(y));

initial begin
data=8'b00001111;
#4
$display("time=%0t,data=%b,y=%b",$time,data,y);

$finish;
end


endmodule
