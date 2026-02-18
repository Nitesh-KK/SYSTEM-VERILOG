module functions;
  int res,a=9,b=7;
  initial begin
    res=mul(a,b);
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
