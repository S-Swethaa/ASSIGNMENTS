`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 04:02:28 PM
// Design Name: 
// Module Name: fsm_assign_09_tb
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


module fsm_assign_09_tb();
    reg clk;
    reg reset;
    reg din;
    wire detected;

    fsm_assign_09 dut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;   
    end

    initial begin
        reset = 1;
        din   = 0;
        #10;                
        reset = 0;

        // 1 0 1 1 0 0 1 0
        din = 1; #10;
        din = 0; #10;
        din = 1; #10;
        din = 1; #10;
        din = 0; #10;
        din = 0; #10;
        din = 1; #10;
        din = 0; #10;

        #40;
        $finish;
    end

   

endmodule
