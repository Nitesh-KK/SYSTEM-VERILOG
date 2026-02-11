module asso_arr_meth;
  int arr[string];
  initial begin
    arr='{"Bike":2,"Car":4,"Walk":0,"Bus":6};
    $display("Array.size(): %0d",arr.size());
    $display("Array.num(): %0d",arr.num());
    begin
      string i;
      if(arr.first(i))
        $display("First element[%s]: %0d",i,arr[i]);
    end
    begin
      string i;
      if(arr.last(i))
        $display("Last element[%s]: %0d",i,arr[i]);
    end
    if(arr.exists("Car"))
      $display("Found Car: %0d",arr["Car"]);
    if(!arr.exists("Ship"))
      $display("Vehicles without  wheels are not found...");
    begin 
      string i="Car";
      if(arr.prev(i))
        $display("Array previous [%s]= %0d",i,arr[i]);
    end
    begin 
      string i="Car";
      if(arr.next(i))
        $display("Array next [%s]= %0d",i,arr[i]);
    end
  end
endmodule
/*
OUTPUT:
Array.size(): 4
Array.num(): 4
First element[Bike]: 2
Last element[Walk]: 0
Found Car: 4
Vehicles with wheels are found...
Array previous [Bus]= 6
Array next [Walk]= 0
*/
