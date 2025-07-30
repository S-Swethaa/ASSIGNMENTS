`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 08:05:30 PM
// Design Name: 
// Module Name: question_9
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


module question_9();
reg [2:0] a, b;
reg [2:0]y;
initial
begin
a= 3'd5;
b= 3'b111;
y = a|b;
end

endmodule
