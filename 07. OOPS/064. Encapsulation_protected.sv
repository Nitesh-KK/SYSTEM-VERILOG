class parent;
  int a=12;
  protected int b;
  protected int c=7;
  function void sum(int x,int y);
    b=x+y;
  endfunction
  function void display();
    $display("The values are a=%0d b=%0d c=%0d",a,b,c);
  endfunction
endclass
class child extends parent;
  function void disp();
    $display("The protected values from parent are a=%0d b=%0d c=%0d",a,b,c);
  endfunction
endclass
module enc_prot;
  parent p;
  child ch;
  initial begin
    p=new();
    p.sum(10,4);
    p.display();
    ch=new();
    ch.disp();
  end
endmodule
/*
OUTPUT:
The values are a=12 b=14 c=7
The protected values from parent are a=12 b=0 c=7
*/
