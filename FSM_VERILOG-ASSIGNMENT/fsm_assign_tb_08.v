`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 03:44:23 PM
// Design Name: 
// Module Name: fsm_assign_tb_08
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


module fsm_assign_tb_08();
reg clk;
    reg reset;
    reg din;
    wire detected;

    fsm_assign_08 uut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );

    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        reset = 1;
        din = 0;

        #15 reset = 0;

       
        #10 din = 1;
        #10 din = 1;
        #10 din = 1; 
        #10 din = 0;
        #10 din = 1;
        #10 din = 1;
        #10 din = 1; 
        #10 din = 1;
        #10 din = 0;
        #20 $finish;
    end
endmodule
