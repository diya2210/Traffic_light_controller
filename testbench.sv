module test_cyclic_lamp;
reg clx;
  wire [0:2] light;
cyclic_lamp LAMP (clx, light);
always #5 clx = ~clx;
  initial
    begin
      clx=1'b0;
      #100 $finish;
    end
  initial
    begin
      $dumpfile("cyclic.vcd");
      $dumpvars (0, test_cyclic_lamp);
      $monitor ($time, "RGY:%b", light);
    end
endmodule
