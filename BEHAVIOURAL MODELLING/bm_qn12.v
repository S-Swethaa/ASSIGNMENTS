`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 06:33:57 PM
// Design Name: 
// Module Name: bm_qn12
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
/*module test;

initial begin
  fork
    begin
      integer i;
      for (i = 0; i <= 3; i = i + 1)
        $display($time, "Value of i = %0d", i);
    end

    begin
      #1;
      $display("Executed 2nd begin block");
    end
  join

  $display("Fork Join Ended");
end

endmodule

end*/


module bm_qn12();

  integer i;
  initial begin
    fork
      begin
        for (i = 0; i <= 3; i = i + 1)
          $display("%0t: value of i = %0d", $time, i);
      end
      begin
        #1;
        $display("%0t: Executed 2nd begin block", $time);
      end
    join
    $display("%0t: Fork Join Ended", $time);
    $finish;
  end
endmodule
