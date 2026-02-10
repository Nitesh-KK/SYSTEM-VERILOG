module td_packed_array;
  bit [3:0][7:0] arr;
  int i,j;
  initial begin
    arr=32'hf9e8_7d6c;
    foreach(arr[i])
      $display("arr[%0d]= %b (%h)",i,arr[i],arr[i]);
    foreach(arr[i][j]) begin
      $display("arr[%0d][%0d]= %b",i,j,arr[i][j]);
    end
  end
endmodule

/*
OUTPUT:

arr[3]= 11111001 (f9)
arr[2]= 11101000 (e8)
arr[1]= 01111101 (7d)
arr[0]= 01101100 (6c)
arr[0][7]= 0
arr[0][6]= 1
arr[0][5] 1
arr[0][4]= 0
arr[0][3]= 1
arr[0][2]= 1
arr[0][1]= 0
arr[0][0]= 0
*/
