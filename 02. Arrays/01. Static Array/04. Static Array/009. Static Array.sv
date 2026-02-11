module static_array;
  bit [7:0] s_arr;
  initial begin
    s_arr=8'h4c;
    for(int i=0;i<$size(s_arr);i++)
      $display("Array[%0d]= %b",i,s_arr[i]);
    $display("Array= %h",s_arr);
  end
endmodule
/*
OUTPUT:
Array[0]= 0
Array[1]= 0
Array[2]= 1
Array[3]= 1
Array[4]= 0
Array[5]= 0
Array[6]= 1
Array[7]= 0
Array= 4c*/
