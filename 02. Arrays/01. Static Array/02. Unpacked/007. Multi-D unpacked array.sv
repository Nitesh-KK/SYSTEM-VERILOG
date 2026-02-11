module md_unpacked;
  byte md_arr[3][4];
  initial begin
    foreach(md_arr[i])
      foreach(md_arr[i][j])
        md_arr[i][j]=$random;
    $display("Multi-dimensional array: %p",md_arr);
  end
endmodule

/*
OUTPUT:
Multi-dimensional array: '{'{'h24, 'h81, 'h9, 'h63}, '{'hd, 'h8d, 'h65, 'h12}, '{'h1, 'hd, 'h76, 'h3d}}
*/
