`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 03:38:14 PM
// Design Name: 
// Module Name: fsm_assign_08
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


module fsm_assign_08(
    input  wire clk,
    input  wire reset,
    input  wire din,
    output reg  detected
);

    
    reg [1:0] state, next_state;
    parameter  A = 2'd0,   
               B = 2'd1,   
               C = 2'd2;   

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= A;
        else
            state <= next_state;
    end

    always @(*) begin
        next_state = state;
        detected   = 1'b0;   

        case (state)
            A: begin
                if (din)
                    next_state = B;
                else
                    next_state = A;
            end

            B: begin
                if (din)
                    next_state = C;
                else
                    next_state = A;
            end

            C: begin
                if (din) begin
                    next_state = C;   
                    detected   = 1'b1; 
                end else
                    next_state = A;
            end

            default: next_state = A;
        endcase
    end

endmodule