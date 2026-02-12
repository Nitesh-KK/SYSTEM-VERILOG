module dyn_sort;
  int array[];
  initial begin
    array=new[10];
    foreach(array[i])
      array[i]=$urandom_range(0,100);
    $display("Before sorting: %p",array);
    for(int i=0;i<9;i++) begin
      for(int j=i+1;j<10;j++) begin
        if(array[i]>array[j]) begin
          array[i]=array[i]^array[j];
          array[j]=array[i]^array[j];
          array[i]=array[i]^array[j];
        end
      end
    end
    $display("After sorting ; %p",array);
  end
endmodule
/*
OUTPUT:
Before sorting: '{5, 64, 79, 19, 90, 22, 89, 5, 6, 46}
After sorting ; '{5, 5, 6, 19, 22, 46, 64, 79, 89, 90}
*/
