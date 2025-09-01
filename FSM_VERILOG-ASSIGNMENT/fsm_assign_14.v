`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 05:52:09 PM
// Design Name: 
// Module Name: fsm_assign_14
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


module fsm_assign_14(
input wire clk_i,
input wire reset,
output reg clk_o);

parameter total_period=10,active_high=6,active_low=(total_period-active_high);
//reg [total_period-1:0]counter;
 reg [$clog2(total_period)-1:0] counter;
 
always @(posedge clk_i or posedge reset)begin
if(reset)begin
 counter<=0;
 clk_o<=0;
 end
 else begin
   if(counter<(total_period-1))
      counter<=counter+1;
   else 
      counter<=0;
      
   if(counter < active_high)
      clk_o<=1;
   else
      clk_o<=0;
    end
end 
endmodule
