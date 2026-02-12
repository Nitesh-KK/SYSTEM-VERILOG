module pop_all;
  int arr[$];
  initial begin
    for(int i=0;i<5;i++)
      arr[i]=$urandom_range(1,20);
    $display("Queue: %p",arr);
    while(arr.size()>0) 
      $display("Popped out element: %0d",arr.pop_front());
  end
endmodule
/*
OUTPUT:
Queue: '{13, 8, 10, 16, 8}
Popped out element: 13
Popped out element: 8
Popped out element: 10
Popped out element: 16
Popped out element: 8
*/
