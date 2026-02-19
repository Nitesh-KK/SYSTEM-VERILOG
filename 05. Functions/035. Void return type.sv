module fun_void;
  int x,y;
  initial begin
    x=5;y=10;
    mul(x,y);
  end
  function void mul(int a,b);
    $display("Product is %0d",a*b);
  endfunction
endmodule
/*
OUTPUT:
Product is 50
*/
