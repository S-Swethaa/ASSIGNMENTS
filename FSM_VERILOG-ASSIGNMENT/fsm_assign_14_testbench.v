`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 07:56:11 PM
// Design Name: 
// Module Name: fsm_assign_14_testbench
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


module fsm_assign_14_testbench();
reg clk_i,reset;
wire clk_o ;

fsm_assign_14 #(.total_period(10),.active_high(6))uut(.clk_i(clk_i),.reset(reset),.clk_o(clk_o));

  initial begin
        clk_i = 0;
        forever #5 clk_i = ~clk_i;  
    end

 initial begin
        reset = 1;
        #20;              

        reset = 0;       
        #200;             

        reset = 1;        
        #20;

        reset = 0;        
        #200;

        $stop;            
    end









endmodule
