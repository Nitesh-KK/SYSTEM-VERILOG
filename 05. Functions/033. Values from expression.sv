module functions;
  initial begin
    $display("The product is %0d",mul(9,7));
  end
  function int mul(int x,y);
    $display("\nInside the function");
    return x*y;
  endfunction
endmodule
/*
OUTPUT:
The product is 
Inside the function
63
*/
