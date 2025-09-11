module TASK6();
  reg clk;

  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end
  task toggle_every_10;
    output reg sig;
    integer i;
    begin
      sig = 1'b0;
      for (i = 0; i < 10; i = i + 1) begin
        #10 sig = ~sig;
      end
    end
  endtask

endmodule