module assoc_arr;
  int a1[int];
  int a2[string];
  string a3[string];
  initial begin
    a1='{1:25,5:5,2:50,10:30};
    a2='{"Apple":2,"Mango":7,"Orange":5,"Guava":15};
    a3='{"Fruit":"Apple","Price":"160","Quantity":"1 Kg"};
    $display("Array-1: %p",a1);
    $display("Array-2: %p",a2);
    $display("Array-3: %p",a3);
  end
endmodule

/*
OUTPUT:
Array-1: '{1:25, 2:50, 5:5, 10:30}
Array-2: '{"Apple":2, "Guava":15, "Mango":7, "Orange":5}
Array-3: '{"Fruit":"Apple", "Price":"160", "Quantity":"1 Kg"}
*/
