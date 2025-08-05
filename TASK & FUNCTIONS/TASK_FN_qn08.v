`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 02:25:51 PM
// Design Name: 
// Module Name: TASK_FN_qn08
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


module TASK_FN_qn08();
integer a;
initial begin
without_auto(1);
without_auto(2);
without_auto(3);
end
task without_auto(input integer s);
integer local_temp = 0;
begin
local_temp=s+a;
$display("without_auto result temp=%d",temp);
end
 endtask
 endmodule
