module up_counter(counter_up cu);
  reg [2:0] count_up;
  
  always @(posedge cu.clk) begin
    if(cu.rst) count_up<=3'd0;
    else count_up<=count_up+1'd1;
  end
  assign cu.count=count_up;
endmodule
interface counter_up #(parameter N=2);
  logic clk;
  logic rst;
  logic [N:0]count;
endinterface

module test();
  counter_up cu();
  up_counter up(cu);
  initial begin
    $monitor("Clk=%b\t rst=%b\t count=%0d",cu.clk,cu.rst,cu.count);
    cu.clk=0;
    forever #2 cu.clk=~cu.clk;
  end
  initial begin
    cu.rst=1;
    #10;
    cu.rst=0;
    #30 $finish;
  end
endmodule
/*
OUTPUT:
Clk=0	 rst=1	 count=x
Clk=1	 rst=1	 count=0
Clk=0	 rst=1	 count=0
Clk=1	 rst=1	 count=0
Clk=0	 rst=1	 count=0
Clk=1	 rst=0	 count=1
Clk=0	 rst=0	 count=1
Clk=1	 rst=0	 count=2
Clk=0	 rst=0	 count=2
Clk=1	 rst=0	 count=3
Clk=0	 rst=0	 count=3
Clk=1	 rst=0	 count=4
Clk=0	 rst=0	 count=4
Clk=1	 rst=0	 count=5
Clk=0	 rst=0	 count=5
Clk=1	 rst=0	 count=6
Clk=0	 rst=0	 count=6
Clk=1	 rst=0	 count=7
Clk=0	 rst=0	 count=7
Clk=1	 rst=0	 count=0
*/
