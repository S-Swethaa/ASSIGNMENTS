`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 11:24:44 AM
// Design Name: 
// Module Name: TASK3_AND_OR_OPERATION
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


module TASK3_AND_OR_OPERATION;
    reg a,b;
    reg and_out,or_out;
    
    task perform_and_or;
    input x,y;
    output out_a;
    output out_o;
    begin
    out_a=x&y;
    out_o=x|y;
    end
    endtask
    
    initial begin
    a=1;b=0;
    
    perform_and_or(a,b,and_out,or_out);
            $display("a = %b, b = %b, AND = %b, OR = %b", a, b, and_out, or_out);

     #5 ;
     a=1;b=1;
    
    perform_and_or(a,b,and_out,or_out);
            $display("a = %b, b = %b, AND = %b, OR = %b", a, b, and_out, or_out);

    end

endmodule
