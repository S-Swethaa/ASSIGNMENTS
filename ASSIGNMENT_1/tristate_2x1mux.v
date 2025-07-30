`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 12:08:09 PM
// Design Name: 
// Module Name: tristate_2x1mux
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


module tristate_2x1mux(
input x,y,s,
output f);
    wire f1,f2;
    
    buffer0 b1(f1,s,x);
    buffer1 b2(f2,s,y);
    assign f=f1|f2;
    

endmodule
