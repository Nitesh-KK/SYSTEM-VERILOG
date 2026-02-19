module func;
  int res;
  initial begin
    res=sum();
    $display("The sum of 2 values: %0d",res);
  end
  function int sum(int a=7,b=10);
    return a+b;
  endfunction
endmodule
/*
OUTPUT:
The values in array: '{0, 1, 4, 9, 16}
*/
