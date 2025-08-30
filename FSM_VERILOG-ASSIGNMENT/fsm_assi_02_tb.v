`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2025 03:40:17 PM
// Design Name: 
// Module Name: fsm_assi_02_tb
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


module fsm_assi_02_tb;
    reg clk, reset, x;
    wire y;

    fsm_assi_02 uut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .y(y)
    );

    always #5 clk = ~clk;

    reg [15:0] test_vec;
    integer i;

    initial begin
        clk = 0; reset = 1; x = 0;
        #12 reset = 0;
        test_vec = 16'b0101101111010100;
        for (i = 15; i >= 0; i = i - 1) begin
            x = test_vec[i];
            #10;
        end
        #20 $finish;
    end

endmodule
