`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 11:19:28 PM
// Design Name: 
// Module Name: question_22
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


module question_22();
reg [3:0] x;
initial begin
x = 4'b0011;
fork
#5 x = x + 1;
#10 x = x + 2;
join
end

endmodule
