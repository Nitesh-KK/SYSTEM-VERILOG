module reverse_str;
  string name="Silicon Craft";
  string rname="";
  initial begin
    for(int i=name.len()-1;i>=0;i--)
      rname={rname,name[i]};
    $display("Original string : %s",name);
    $display("Reversed string : %s",rname);
  end
endmodule
/*
OUTPUT:
Original string : Silicon Craft
Reversed string : tfarC nociliS
*/
