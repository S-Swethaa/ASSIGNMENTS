`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2025 03:22:00 PM
// Design Name: 
// Module Name: fsm_assign_03_testbench
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


module fsm_assign_03_testbench();
reg [7:0]binary;
wire [3:0]hundreds;
wire [3:0]tens;
wire [3:0]ones;

fsm_assign_03 uut(.binary(binary),
.hundreds(hundreds),
.tens(tens),
.ones(ones));

initial begin
        binary= 8'd0;   #10;
        binary = 8'd9;   #10;
        binary = 8'd45;  #10;
        binary = 8'd123; #10;
        binary = 8'd249; #10;
        binary = 8'd255; #10;

        $finish;
        end
endmodule
