module md_packed_array;
  bit [2:0][3:0][7:0] arr;
  initial begin
    arr[0]=32'hface_cafe;
    arr[1]=32'hba19_45fa;
    arr[2]=32'hec58_79bf;
    foreach(arr[i]) begin
      $display("arr[%0d]= %h",i,arr[i]);
      foreach(arr[i][j]) begin
        $display("arr[%0d][%0d]=%h",i,j,arr[i][j]);
      end
    end
  end
endmodule

/*
OUTPUT:

arr[2]= ec5879bf
arr[2][3]=ec
arr[2][2]=58
arr[2][1]=79
arr[2][0]=bf
arr[1]= ba1945fa
arr[1][3]=ba
arr[1][2]=19
arr[1][1]=45
arr[1][0]=fa
arr[0]= facecafe
arr[0][3]=fa
arr[0][2]=ce
arr[0][1]=ca
arr[0][0]=fe
*/
