module datatype_4state;
  integer i;
  logic [7:0]l;
  time t;
  reg r;
  initial begin
    i=32'hxxzz_08F9;
    l=8'b0xz011xx;
    t=$time;
    r=1'bx;
    $display("integer: %h",i);
    $display("logic: %b",l);
    $display("time: %t",t);
    $display("reg: %b",r);
  end
endmodule

/*
OUTPUT:

integer: xxzz08f9
logic: 0xz011xx
time: 0
reg: x
*/
