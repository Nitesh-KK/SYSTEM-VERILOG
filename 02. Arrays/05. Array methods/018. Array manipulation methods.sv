module array_manipulation;
  int arr[$]='{8,5,7,6,3,1,8,4,2};
  int ans[$];
  initial begin
    $display("Array size: %0d",arr.size());
    ans=arr.find(x) with (x>4);
    $display("Elements > 4: %p",ans);
    ans=arr.unique();
    $display("Unique elements: %p",ans);
    arr.reverse();
    $display("Reverse: %p",arr);
    arr.sort();
    $display("Sort: %p",arr);
    arr.rsort();
    $display("Rsort: %p",arr);
    arr.shuffle();
    $display("Suffle: %p",arr);
    $display("Sum: %0d",arr.sum());
    $display("Product: %0d",arr.product());
  end
endmodule
    
/*
OUTPUT:
Array size: 9
Elements > 4: '{8, 5, 7, 6, 8}
Unique elements: '{8, 5, 7, 6, 3, 1, 4, 2}
Reverse: '{2, 4, 8, 1, 3, 6, 7, 5, 8}
Sort: '{1, 2, 3, 4, 5, 6, 7, 8, 8}
Rsort: '{8, 8, 7, 6, 5, 4, 3, 2, 1}
Suffle: '{5, 8, 2, 7, 6, 8, 4, 1, 3}
Sum: 44
Product: 322560
*/
