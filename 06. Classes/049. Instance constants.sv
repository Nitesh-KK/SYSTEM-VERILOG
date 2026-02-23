class data;
  const int a;
  int b;
  function new(int a);
    this.a=a;
    b=10;
  endfunction
  function void display();
    $display("a=%0d b=%0d",a,b);
  endfunction
endclass
module global_cons;
  data da;
  initial begin
    da=new(8);
    da.display();
  end
endmodule
/*
OUTPUT:
a=8 b=10
*/
