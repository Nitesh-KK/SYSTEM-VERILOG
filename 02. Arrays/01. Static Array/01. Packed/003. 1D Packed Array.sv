module sd_packed_array;
  bit [3:0] arr;
  initial begin
    arr=4'hc;
    foreach(arr[i])
      $display("arr[%0d]=%b",i,arr[i]);
  end
endmodule

/*
OUTPUT:

arr[3]=1
arr[2]=1
arr[1]=0
arr[0]=0
*/
