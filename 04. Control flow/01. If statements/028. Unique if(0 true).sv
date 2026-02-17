module unq_if_without_else;
  int a=20;
  initial begin
    unique if(a<15) $display("The number is less than 15");
    else if(a<10) $display("The number is less than 10");
    $display("Unique if completed");
  end
endmodule
/*
OUTPUT:
Unique if completed
xmsim: *W,NOCOND: Unique if violation:  Every if clause was false.
*/
