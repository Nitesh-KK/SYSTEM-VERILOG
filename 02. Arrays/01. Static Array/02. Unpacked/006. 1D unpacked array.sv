module sd_unpacked;
  byte up_arr[8];
  initial begin
    foreach(up_arr[i]) 
      up_arr[i]=$random;
    $display("1D unpacked array: %p",up_arr);
  end
endmodule

/*
OUTPUT;
1D unpacked array: '{'h24, 'h81, 'h9, 'h63, 'hd, 'h8d, 'h65, 'h12}
*/
