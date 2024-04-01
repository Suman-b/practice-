module D_FF(d,clk,rst,q);
  input d;
  input clk,rst;
  output reg q;
  
  always@(posedge clk or negedge rst )
    begin
      if (rst==0)
      begin
        q<=0;
      end
    else
      begin
        q<=d;
      end
    end  
endmodule  
