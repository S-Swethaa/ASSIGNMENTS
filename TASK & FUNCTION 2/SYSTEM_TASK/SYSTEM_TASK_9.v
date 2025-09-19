`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/11/2025 11:25:31 PM
// Design Name: Use $dumpfile and $dumpvars to generate waveform for a NOT gate.
// Module Name: SYSTEM_TASK_9
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


module SYSTEM_TASK_9(
output n,
input a
    );
assign n=~a; 

endmodule
