class parent;
  int a=5;
  local int b;
  local int c=12;
  function void sum(int x,int y);
    b=x+y;
  endfunction
  function void display();
    $display("The value of sum : %0d",b);
    $display("Values a=%0d b=%0d c=%0d",a,b,c);
  endfunction
endclass
module enc_local;
  parent p;
  initial begin
    p=new();
    p.sum(4,3);
    p.display();
  end
endmodule
/*
OUTPUT:
The value of sum : 7
Values a=5 b=7 c=12
*/
