module D_FF(d,clk,rst,q);
  input d;
  input clk,rst;
  output reg q;
  // asynch low reset
  always@(posedge clk or negedge rst )    //  asynch High reset             //    synch reset
    begin                                 //  @(posedge clk or posedge rst) //    @(posedge clk)
      if (rst==0)                         //  if (rst ==1)                  //     if (rst ==1)
      begin                               //  q <= 0                        //     q <=0;
        q<=0;
      end
    else
      begin
        q<=d;
      end
    end  
endmodule  
