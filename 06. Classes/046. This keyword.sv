class pro_meth;
  int a;
  int b;
  function new(int a,int b);
    this.a=a;
    this.b=b;
  endfunction
  function int add();
   return a+b;
  endfunction
  function void display();
    $display("a=%0d b=%0d sum=%0d",a,b,add());
  endfunction
endclass
module cls_pro_method;
  pro_meth pm;
  initial begin
    pm=new(1,2);
    pm.display();
    pm=new(5,10);
    pm.display();
    pm=new(15,1);
    pm.display();
  end
endmodule
/*
OUTPUT:[WITHOUT THIS KEYWORD]
a=0 b=0 sum=0
a=0 b=0 sum=0
a=0 b=0 sum=0

OUTPUT:[WITH THIS KEYWORD]
a=1 b=2 sum=3
a=5 b=10 sum=15
a=15 b=1 sum=16
*/
