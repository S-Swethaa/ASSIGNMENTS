`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 11:23:39 PM
// Design Name: 
// Module Name: question_50
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


module question_50();
reg [3:0] acc;
initial begin
acc = 4'b0001;
while (acc < 4'b1000) begin
acc = acc + 1;
end
$display("acc = %b", acc);
end
endmodule
