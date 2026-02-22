class scope;
  int a;
  extern function void display();
endclass
function void scope::display();
  $display("a=%0d",a);
endfunction
module scope_res;
  scope sc;
  initial begin
    sc=new();
    sc.a=10;
    sc.display();
  end
endmodule
/*
OUTPUT:
a=10
*/
