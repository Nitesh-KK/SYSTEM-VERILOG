class cars #(parameter brand,count);
  bit [brand-1:0]a;
  bit [count-1:0]b;
  function new();
    a=14;
    b=7;
  endfunction
  function void display();
    $display("The value is a=%0d b=%0d",a,b);
  endfunction
endclass
cars #(3,2)cs;
module top;
  initial begin
    cs=new();
    cs.display();
  end
endmodule
/*
OUTPUT:
The value is a=6 b=3
*/
