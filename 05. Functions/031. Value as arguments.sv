module functions;
  int res;
  initial begin
    res=mul(9,7);
    $display("The product is %0d",res);
  end
  function int mul(int a,b);
    $display("Inside the function");
    return a*b;
  endfunction
endmodule
/*
OUTPUT:
Inside the function
The product is 63
*/
