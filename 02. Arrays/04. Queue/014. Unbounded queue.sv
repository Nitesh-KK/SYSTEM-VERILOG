module unbounded_queue;
  string arr[$]={"apple","mango","banana","guava"};
  initial begin
    $display("Fruits: %p",arr);
    foreach(arr[i])
      $display("Array[%0d]: %s",i,arr[i]);
  end
endmodule
/*
OUTPUT:
Fruits: '{"apple", "mango", "banana", "guava"}
Array[0]: apple
Array[1]: mango
Array[2]: banana
Array[3]: guava
*/
