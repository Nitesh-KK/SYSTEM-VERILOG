class base;
  virtual function void display();
    $display("Inside base");
  endfunction
endclass
class child extends base;
  function void display();
    $display("Inside child");
  endfunction
endclass
module tb;
  child ch;
  base b;
  initial begin
  ch=new();
  b=ch;
  ch.display();
  b.display();
  end
endmodule
/*
OUTPUT:
Inside child
Inside child
*/
