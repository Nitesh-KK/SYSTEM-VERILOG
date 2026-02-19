class cls_handle;
  int x;
endclass
module cls_hand;
  cls_handle ch;
  initial begin
    if(ch!=null) $display("Handle is not empty");
    else $display("Handle is empty");
  end
endmodule
/*
OUTPUT:
Handle is empty
*/
