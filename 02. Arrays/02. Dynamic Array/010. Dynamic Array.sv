module dynamic_arr;
  int arr[];
  initial begin
    arr=new[7];
    arr='{9,8,13,5,1,19,2};
    foreach(arr[i])
      $display("Array[%0d]=[%0d]",i,arr[i]);
    $display("Array: %p",arr);
  end
endmodule
/*
OUTPUT:
Array[0]=[9]
Array[1]=[8]
Array[2]=[13]
Array[3]=[5]
Array[4]=[1]
Array[5]=[19]
Array[6]=[2]
Array: '{9, 8, 13, 5, 1, 19, 2}
*/
