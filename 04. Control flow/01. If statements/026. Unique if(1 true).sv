module unq_if;
  int a=10;
  initial begin
    unique if(a<15) $display("The number is less than 15");
    else if(a<10) $display("The number is less than 10");
    else $display("The number is greater than 15");
  end
endmodule
/*
OUTPUT:
The number is less than 15
*/
