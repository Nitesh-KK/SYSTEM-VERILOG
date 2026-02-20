class cls_constructor;
  function void display();
    $display("The class is created");
  endfunction
endclass
module cls_const;
  cls_constructor cc=new();
  initial begin
    cc.display();
  end
endmodule
/*
OUTPUT:
The class is created
*/
