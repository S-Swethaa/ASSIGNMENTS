`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2025 01:58:32 PM
// Design Name: 
// Module Name: time_simulation_parameter
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


module time_simulation_parameter();
reg data;
reg clk;
initial begin
clk=0;data=1;
$display("Time=%0t,clk=%b,data=%b",$time,clk,data);

#4
clk=1;
data=0;

$display("Time=%0t,clk=%b,data=%b",$time,clk,data);
#4
clk=1;
data=1;
#4
$display("Time=%0t,clk=%b,data=%b",$time,clk,data);#4
$finish;
end
endmodule
