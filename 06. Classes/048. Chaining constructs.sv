class parent;
  int a;
  function new(int a);
    this.a=a;
  endfunction
  function void display();
    $display("The value of a=%0d",a);
  endfunction
endclass
class child extends parent;
  int b;
  function new(int a,int b);
    super.new(a);
    this.b=b;
    super.display();
    disp_pro();
  endfunction
  function int prod(int a,int b);
    return a*b;
  endfunction
  function void disp_pro();
    $display("The product of a=%0d and b=%0d is %0d",a,b,prod(a,b));
  endfunction
endclass
module chain_const;
  child ch=new(15,15);
endmodule
/*
OUTPUT:
The value of a=15
The product of a=15 and b=15 is 225
*/
