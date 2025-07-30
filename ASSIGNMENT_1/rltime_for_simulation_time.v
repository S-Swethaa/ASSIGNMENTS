`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2025 09:09:26 PM
// Design Name: 
// Module Name: rltime_for_simulation_time
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


module rltime_for_simulation_time();

  realtime current_time;

  initial begin
    current_time = $realtime;
    $display("Time = %0t, Realtime = %0.2f", $time, current_time);

    #3.3;  
    current_time = $realtime;
    $display("Time = %0t, Realtime = %0.2f", $time, current_time);
  end
endmodule


