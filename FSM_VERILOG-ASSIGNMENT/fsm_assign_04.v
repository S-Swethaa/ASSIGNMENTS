`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 11:36:20 AM
// Design Name: 
// Module Name: fsm_assign_04
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
module fsm_assign_04(
output reg [2:0]east,west,north,south,
output reg P_east,P_west,P_north,P_south,
input wire clk,reset,
input wire [3:0]traffic,emergency,pedastrain_req);

reg [3:0]state;
parameter [3:0]E_G=4'b0000,E_Y=4'b0001,
N_G=4'b0010,N_Y=4'b0011,
W_G=4'b0100,W_Y=4'b0101,
S_G=4'b0110,S_Y=4'b0110,
P_E=4'b1000,P_N=4'b1001,
P_W=4'b1010,P_S=4'b1011;
reg [4:0]count;

always @(posedge clk or posedge reset) begin
if(reset) begin
count<=0;
state<=E_G;
end else if (|emergency) begin
count<=0;
case (emergency)
 4'b1000:state<=E_G;
 4'b0100:state<=N_G;
 4'b0010:state<=W_G;
 4'b0001:state<=S_G;
endcase

end else if (|traffic) begin
count<=0;
case (traffic)
 4'b1000:state<=E_G;
 4'b0100:state<=N_G;
 4'b0010:state<=W_G;
 4'b0001:state<=S_G;
endcase

end else if (|pedastrain_req) begin
count <= 0;
case (pedastrain_req)
 4'b1000: state <= P_E;
 4'b0100: state <= P_N;
 4'b0010: state <= P_W;
 4'b0001: state <= P_S;
endcase
end else begin  
case (state)
 E_G:if (count==19) begin
 state<=E_Y;
 count<=0;
 end else
 count<=count+1;        
 E_Y:if (count==3) begin state<=N_G; count<=0; end else count<=count+1;
 N_G:if (count==19) begin state<=N_Y; count<=0; end else count<=count+1;
 N_Y:if (count==3) begin state<=W_G; count<=0; end else count<=count+1;
 W_G:if (count==19) begin state<=W_Y; count<=0; end else count<=count+1;
 W_Y:if (count==3) begin state<=S_G; count<=0; end else count<=count+1;
 S_G:if (count==9) begin state<=S_Y; count<=0; end else count<=count+1;
 S_Y:if (count==3) begin state<=E_G; count<=0; end else count<=count+1;
 
 P_E:if (count==10) begin state<=E_G; count<=0; end else count<=count+1;
 P_N:if (count==10) begin state<=N_G; count<=0; end else count<=count+1;
 P_W:if (count==10) begin state<=W_G; count<=0; end else count<=count+1;
 P_S:if (count==10) begin state<=S_G; count<=0; end else count<=count+1;
 default: begin state<=E_G; count<=0; end
endcase
end
end

always @(*) begin
east=3'b100;
north=3'b100;
west=3'b100;
south=3'b100;
P_east=0;P_west=0;P_north=0;P_south=0;
case(state)
 E_G:east=3'b001;
 E_Y:east=3'b010;
 N_G:north=3'b001;
 N_Y:north=3'b010;
 W_G:west=3'b001;
 W_Y:west=3'b010;
 S_G:south=3'b001;
 S_Y:south=3'b010;
 P_E:P_east=1;
 P_N:P_north=1;
 P_W:P_west=1;
 P_S:P_south=1;
 endcase
 end
 endmodule


