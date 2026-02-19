class object;
  int x;
endclass
module obj;
  object ob;
  initial begin
    ob=new();
    if(ob!=null) $display("The object is not empty");
    else  $display("The object is empty");
  end
endmodule
/*
OUTPUT:
The object is not empty
*/
