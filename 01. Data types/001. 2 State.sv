module datatypes_2state;
  int i;
  shortint si;
  longint li;
  bit b;
  byte by;
  initial begin
    i=1000;
    $display("Integer:%d",i);
    i=-500;
    $display("Integer signed: %d",i);
    si=-100;
    $display("shortint: %d",si);
    li=-5000;
    $display("longint: %d",li);
    b=1;
    $display("bit: %b",b);
    by=8'b1100x0z1;
    $display("byte: %b",by);
  end
endmodule
    
/*
OUTPUT:

Integer: 1000
Integer signed:-500
shortint:-100
longint:-5000
bit: 1
byte: 11000001
*/
