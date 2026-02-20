class cls_constructor;
  function void display();
    $display("The class is created");
  endfunction
endclass
module cls_const;
  cls_constructor cc;
  initial begin
    cc=new();
    cc.display();
  end
endmodule
/*
OUTPUT:
The class is created
*/
