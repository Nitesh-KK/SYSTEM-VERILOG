class example;
  int a;
  int b;
  function void display();
    $display("The value of a=%0d,b=%0d",a,b);
  endfunction
endclass
module eg_class;
  example eg;
  initial begin
    eg=new();
    eg.a=10;
    $display("The value of a=%0d, b=%0d",eg.a,eg.b);
    eg.b=25;
    $display("The value of a=%0d, b=%0d",eg.a,eg.b);
  end
endmodule
/*
OUTPUT:
The value of a=10, b=0
The value of a=10, b=25
*/
