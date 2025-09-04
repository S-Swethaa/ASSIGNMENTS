`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 10:17:46 AM
// Design Name: 
// Module Name: fsm_assign_13_tb
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


module fsm_assign_13_tb();
    reg clk, reset;
    reg x;
    wire y;
    
    fsm_assign_13 uut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .y(y)
    );

    always #5 clk = ~clk;

    reg [15:0] test_vec;
    integer i;

    initial begin
        clk = 0; reset = 1;// x = 0;
        #10 reset = 0;
        test_vec = 16'b0100000011011010;#10;
        for (i = 15; i >= 0; i = i - 1) begin
            x = test_vec[i];
            #10;
        end
        #20 $finish;
    end

endmodule

