module pc_upc;
  bit [3:0][7:0] arr[2][4];
  initial begin
    foreach(arr[i])
      foreach(arr[i][j]) begin
        arr[i][j]=$random;
        $display("Array[%0d][%0d]=%0h",i,j,arr[i][j]);
      end
    $display("Array = %p",arr);
  end
endmodule
/*
OUTPUT:
Array[0][0]=12153524
Array[0][1]=c0895e81
Array[0][2]=8484d609
Array[0][3]=b1f05663
Array[1][0]=6b97b0d
Array[1][1]=46df998d
Array[1][2]=b2c28465
Array[1][3]=89375212
Array = '{'{'h12153524, 'hc0895e81, 'h8484d609, 'hb1f05663}, '{'h6b97b0d, 'h46df998d, 'hb2c28465, 'h89375212}}
*/
