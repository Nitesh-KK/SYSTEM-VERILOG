class parent;
  int a=12;
  int b;
  function void sum(int x,int y);
    b=x+y;
    $display("The values after sum are a=%0d b=%0d",a,b);
  endfunction
endclass
class child extends parent;
  function void pro(int x,int y);
    b=x*y;
    $display("The values after product are a=%0d b=%0d",a,b);
  endfunction
endclass
module enc_public;
  child ch;
  initial begin
    ch=new();
    ch.pro(5,7);
    ch.sum(9,7);
  end
endmodule
/*
OUTPUT:
The values after product are a=12 b=35
The values after sum are a=12 b=16
*/
