module functions;
  int res;
  initial begin
    res=mul(.x(9),.y(7));
    $display("The product is %0d",res);
  end
  function int mul(int x,y);
    $display("Inside the function");
    return x*y;
  endfunction
endmodule
/*
OUTPUT:
Inside the function
The product is 63
*/
