`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2025 11:08:30 AM
// Design Name: 
// Module Name: signed_integers
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


module signed_integers();
integer  int_i;
initial begin

int_i=25;
#10;
$display("Time=%0t,int_i=%b",$time,int_i);
int_i=-25;#10;
$display("Time=%0t,int_i=%b",$time,int_i);
$finish;
end



endmodule
