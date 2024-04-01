module d_FF_test();
  reg d,clk,reset;
  wire q;
  
  //connection to DUT
  
  D_FF dut(.d(d),
           .clk(clk),
           .rst(reset),
           .q(q));
  
  initial begin
    
    clk=0;
    forever
      #10 clk=~clk;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    
  end
  initial begin
    reset =$random;
    d <=$random;
    #10;
    d<=0;
    #10;
    reset=$random;
    d<=$random;
    #50;
    $finish;
  end
endmodule
