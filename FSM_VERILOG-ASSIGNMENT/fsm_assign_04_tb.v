`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 11:40:52 PM
// Design Name: 
// Module Name: fsm_assign_04_tb
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


module fsm_assign_04_tb();
wire [2:0]east,west,north,south;
wire P_east,P_west,P_north,P_south;
reg clk,reset;
reg [3:0]traffic,emergency,pedastrain_req;

fsm_assign_04 uut(.clk(clk),
.reset(reset),
.east(east),
.west(west),
.north(north),
.south(south),
.P_east(P_east),
.P_west(P_west),
.P_north(P_north),
.P_south(P_south),
.traffic(traffic),
.emergency(emergency),
.pedastrain_req(pedastrain_req));

initial begin
clk=0;
forever #5 clk=~clk;   
end
initial begin
reset=1;
traffic=4'b0000;
emergency=4'b0000;
pedastrain_req=4'b0000;
#20;
 
reset=0;
#20;

emergency=4'b1000;
#50;
emergency=4'b0000;
#200;
emergency=4'b0100;
#50;
emergency=4'b0000;
#200;
emergency=4'b0010;
#50;
emergency=4'b0000;
#200;
emergency=4'b0001;
#50;
emergency=4'b0000;
#200;

traffic=4'b1000;
#50;
traffic=4'b0000;
#200;
traffic=4'b0100;
#50;
traffic=4'b0000;
#200;
traffic=4'b0010;
#50;
traffic=4'b0000;
#200;
traffic=4'b0001;
#50;
traffic=4'b0000;
#200;

pedastrain_req=4'b1000;
#50;
pedastrain_req=4'b0000;
#200;
pedastrain_req=4'b0100;
#50;
pedastrain_req=4'b0000;
#200;

$finish;
end


endmodule
