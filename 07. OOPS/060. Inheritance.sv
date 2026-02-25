class parent;
  int a=7;
  function void disp1();
    $display("Parent a=%0d",a);
  endfunction
endclass
class child extends parent;
  int b=11;
  function void disp2();
    $display("Child a=%0d",a);
    $display("Child b=%0d",b);
  endfunction
endclass
module inheritance;
  child c1;
  initial begin
    c1=new();
    c1.disp1();
    c1.disp2();
    c1.a=10;
    c1.disp1();
    c1.disp2();
  end
endmodule
/*
OUTPUT:
Parent a=7
Child a=7
Child b=11
Parent a=10
Child a=10
Child b=11
*/
