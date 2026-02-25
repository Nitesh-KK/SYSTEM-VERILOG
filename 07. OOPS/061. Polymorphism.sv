class parent;
  int a=10;
  virtual function void display();
    a=a+5;
    $display("Value of a=%0d in parent",a);
  endfunction
endclass
class child extends parent;
  function void display();
    a=a+20;
    $display("Value of a=%0d in child",a);
  endfunction
endclass
module polymnorphism;
  parent p;
  child c;
  initial begin
    c=new();
    $display("With polymorphism");
    p=c;
    p.display();
    $display("Without polymorphism");
    p=new();
    p.display();
  end
endmodule
/*
OUTPUT:
With polymorphism
Value of a=30 in child
Without polymorphism
Value of a=15 in parent
*/
