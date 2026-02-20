class method;
  int a=15;
  int b=5;
  function void display();
    $display("The value of a=%0d b=%0d",a,b);
  endfunction
endclass
module cls_method;
  method cls;
  initial begin
    cls=new();
    cls.display();
  end
endmodule
/*
OUTPUT:
The value of a=15 b=5
*/
