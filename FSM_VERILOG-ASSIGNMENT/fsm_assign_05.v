`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 02:53:07 PM
// Design Name: 
// Module Name: fsm_assign_05
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

  
module fsm_assign_05 (
    input wire clk,
    input wire reset,
    input wire wr_en,
    input wire rd_en,
    input wire burst_en,
    input wire [2:0] burst_len,      
    input wire [7:0] data_in,
    input wire [7:0] addr,
    output reg [7:0] data_out,
    output reg error_flag
);

reg [7:0] mem [255:0];               
reg [2:0] burst_count;
reg burst_active;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        data_out <= 8'b0;
        error_flag <= 0;
        burst_count <= 0;
        burst_active <= 0;
    end else begin
        error_flag <= 0;

        if (wr_en && rd_en) begin
            error_flag <= 1;
        end
        if (addr > 8'd255) begin
            error_flag <= 1;
        end

        // Burst Mode
        if (burst_en && !burst_active) begin
            burst_active <= 1;
            burst_count <= 0;
        end

        if (burst_active) begin
            if (burst_count < burst_len) begin
                if (wr_en) begin
                    mem[addr + burst_count] <= data_in; // Write burst
                end else if (rd_en) begin
                    data_out <= mem[addr + burst_count]; // Read burst
                end
                burst_count <= burst_count + 1;
            end else begin
                burst_active <= 0; 
            end
        end else begin
            if (wr_en) begin
                mem[addr] <= data_in;
            end else if (rd_en) begin
                data_out <= mem[addr];
            end
        end
    end
end

endmodule
 