`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 07:54:35 PM
// Design Name: 
// Module Name: question_7
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


module question_7();
reg[13*8:1]s;
initial
begin
s = "hello world";
$display("Value of s= %s",s[104:65]);

end
endmodule
