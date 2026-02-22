class parent;
  int a;
  function new(int a);
    this.a=a;
  endfunction
  function void display();
    $display("Parent class a=%0d",a);
  endfunction
endclass
class child extends parent;
  int b;
  function new(int a,int b);
    super.new(a);
    this.b=b;
  endfunction
  function void display();
    super.display();
    $display("Child class a=%0d b=%0d",a,b);
  endfunction
endclass
module super_key;
  child c1;
  initial begin
    c1=new(5,7);
    c1.display();
  end
endmodule
/*
OUTPUT:
Parent class a=5
Child class a=5 b=7
*/
