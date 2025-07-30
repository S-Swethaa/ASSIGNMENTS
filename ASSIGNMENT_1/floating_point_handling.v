`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2025 09:01:15 PM
// Design Name: 
// Module Name: floating_point_handling
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


module floating_point_handling();
real r1,r2;
integer i1,i2;

initial begin
r1=4e10;
r2=2.18;
assign i1=r1;
assign i2=r2;

$display("r1=%e,i1=%d",r1,i1);
$display("r2=%e,i2=%d",r2,i2);
end

endmodule
