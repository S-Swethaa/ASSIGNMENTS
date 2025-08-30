`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2025
// Design Name: FSM for detecting 111 or 000
// Module Name: fsm_assig_01
// Description: FSM asserts output when three consecutive 1s (111) or 0s (000)
//              are detected. Overlapping sequences are allowed.
//
//////////////////////////////////////////////////////////////////////////////////

module fsm_assig_01(
    input  clk,
    input  reset,
    input  x,
    output reg y
);
    parameter S0 = 3'b000,   
              P1 = 3'b001,   
              P2 = 3'b010,   
              P3 = 3'b011,   
              Q1 = 3'b100,   
              Q2 = 3'b101,   
              Q3 = 3'b110;   

    reg [2:0] state, nextstate;

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= nextstate;
    end

    always @(*) begin
        nextstate = state;
        y = 1'b0;  

        case (state)
            S0: begin
                if (x) nextstate = P1;   
                else  nextstate = Q1;   
            end
            P1: begin
                if (x) nextstate = P2;
                else  nextstate = Q1;
            end
            P2: begin
                if (x) nextstate = P3;   
                else  nextstate = Q1;
            end
            P3: begin
                y = 1'b1;               
                if (x) nextstate = P3;   
                else  nextstate = Q1;
            end

            Q1: begin
                if (~x) nextstate = Q2;
                else    nextstate = P1;
            end
            Q2: begin
                if (~x) nextstate = Q3;   
                else    nextstate = P1;
            end
            Q3: begin
                y = 1'b1;                 
                if (~x) nextstate = Q3;   
                else    nextstate = P1;
            end
        endcase
    end

endmodule
