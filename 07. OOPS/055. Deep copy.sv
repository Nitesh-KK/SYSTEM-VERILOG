class object;
  int a;
  int b;
  function new (int a,int b);
    this.a=a;
    this.b=b;
  endfunction
  function void display();
    $display("The value of a=%0d b=%0d",a,b);
  endfunction
  function void deep_copy(object copy);
    this.a=copy.a;
    this.b=copy.b;
  endfunction
endclass
module top;
  object o1,o2;
  initial begin
    o1=new(5,10);
    o2=new(4,15);
    o2.deep_copy(o1);
    $display("Values in object 1");
    o1.display();
    $display("Values in object 2");
    o2.display();
    o2.b=4;
    o1.a=8;
    $display("After change ");
    $display("Values in object 1");
    o1.display();
    $display("Values in object 2");
    o2.display();
  end
endmodule
/*
OUTPUT:
Values in object 1
The value of a=5 b=10
Values in object 2
The value of a=5 b=10
After change 
Values in object 1
The value of a=8 b=10
Values in object 2
The value of a=5 b=4
*/
    
