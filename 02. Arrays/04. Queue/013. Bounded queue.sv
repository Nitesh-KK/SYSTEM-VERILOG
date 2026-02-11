module bounded_queue;
  int arr[$:7];
  initial begin
    arr='{5,7,9,2,4,6,1,0};
    foreach(arr[i]) begin
      $display("Queue[%0d] = %0d",i,arr[i]);
    end
    $display("Queue = %p",arr);
    arr={};
    $display("Queue after deletion: %p",arr);
  end
endmodule
/*
OUTPUT:
Queue[0] = 5
Queue[1] = 7
Queue[2] = 9
Queue[3] = 2
Queue[4] = 4
Queue[5] = 6
Queue[6] = 1
Queue[7] = 0
Queue = '{5, 7, 9, 2, 4, 6, 1, 0}
Queue after deletion: '{}
*/
