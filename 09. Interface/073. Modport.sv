interface counter_in #(parameter N=2);
  logic clk;
  logic rst;
  logic [N:0]count;
  
  modport DUT(
    input clk,
    input rst,
    output count);
  modport tb(
    output clk,
    output rst,
    input count);
endinterface

module up_counter(counter_in.DUT coun);
  logic [2:0] count_reg;
  always @(posedge coun.clk) begin
    if(coun.rst) count_reg<=0;
    else count_reg<=count_reg+1'd1;
  end
  assign coun.count=count_reg;
endmodule

module test;
  counter_in coun();
  up_counter uc(coun);
  initial begin
    coun.clk=0;
    forever #2 coun.clk=~coun.clk;
  end
  initial begin
    $monitor("clk=%b rst=%b count=%0d",coun.clk,coun.rst,coun.count);
    coun.rst=1;
    #10;
    coun.rst=0;
    #30;
    $finish;
  end
endmodule
/*
OUTPUT:
clk=0 rst=1 count=x
clk=1 rst=1 count=0
clk=0 rst=1 count=0
clk=1 rst=1 count=0
clk=0 rst=1 count=0
clk=1 rst=0 count=1
clk=0 rst=0 count=1
clk=1 rst=0 count=2
clk=0 rst=0 count=2
clk=1 rst=0 count=3
clk=0 rst=0 count=3
clk=1 rst=0 count=4
clk=0 rst=0 count=4
clk=1 rst=0 count=5
clk=0 rst=0 count=5
clk=1 rst=0 count=6
clk=0 rst=0 count=6
clk=1 rst=0 count=7
clk=0 rst=0 count=7
clk=1 rst=0 count=0
*/
