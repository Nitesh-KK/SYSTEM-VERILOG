module queue_method;
  string num[$]={"One","Three","Four","Five"};
  initial begin
    $display("Number queue size: %0d, %p",num.size(),num);
    num.insert(1,"Two");
    $display("Number queue size after inserting : %0d, %p",num.size(),num);
    num.delete(4);
    $display("Number queue size after deletion: %0d, %p",num.size(),num);
    $display("Pop front: %s, size: %0d, Queue: %p",num.pop_front(),num.size(),num);
    num.push_front("Zero");
    $display("Size: %0d, Queue: %p",num.size(),num);
    $display("Pop Back: %s, size: %0d, Queue: %p",num.pop_back(),num.size(),num);
    num.push_back("Six");
    $display("Size: %0d, Queue: %p",num.size(),num);
  end
endmodule
/*
OUTPUT:
Number queue size: 4, '{"One", "Three", "Four", "Five"}
Number queue size after inserting : 5, '{"One", "Two", "Three", "Four", "Five"}
Number queue size after deletion: 4, '{"One", "Two", "Three", "Four"}
Pop front: One, size: 3, Queue: '{"Two", "Three", "Four"}
Size: 4, Queue: '{"Zero", "Two", "Three", "Four"}
Pop Back: Four, size: 3, Queue: '{"Zero", "Two", "Three"}
Size: 4, Queue: '{"Zero", "Two", "Three", "Six"}
*/
