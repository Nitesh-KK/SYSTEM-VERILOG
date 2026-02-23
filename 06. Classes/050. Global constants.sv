class data;
  const int a=7;
  int b;
  function new();
    b=10;
  endfunction
  function void display();
    $display("a=%0d b=%0d",a,b);
  endfunction
endclass
module global_cons;
  data da;
  initial begin
    da=new();
    da.display();
  end
endmodule

/*
OUTPUT:
a=7 b=10
*/
