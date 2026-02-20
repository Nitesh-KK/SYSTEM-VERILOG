class pro_meth;
  int a;
  int b;
  int sum;
  function int add();
   return a+b;
  endfunction
  function void display();
    sum=add();
    $display("The sum of 2 values a=%0d b=%0d sum=%0d",a,b,sum);
  endfunction
endclass
module cls_pro_method;
  pro_meth pm;
  initial begin
    pm=new();
    pm.a=15;
    pm.b=20;
    pm.display();
    pm.a=5;
    pm.b=1;
    pm.display();
  end
endmodule
/*
OUTPUT:
The sum of 2 values a=15 b=20 sum=35
The sum of 2 values a=5 b=1 sum=6
*/
