module fun_array;
  int arr[5];
  initial begin
    disp(arr);
    $display("The values in array: %0p",arr);
  end
  function automatic void disp(ref int arr[5]);
    foreach(arr[i])
      arr[i]=i*i;
  endfunction
endmodule
/*
OUTPUT:
The values in array: '{0, 1, 4, 9, 16}
*/
