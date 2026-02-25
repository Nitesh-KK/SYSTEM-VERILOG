class static_methods;
  int a;
  static int count=0;
  function new(int a);
    this.a=a;
    count++;
  endfunction
  function void display();
    $display("The non-static value is %0d",a);
  endfunction
  static function void disp();
    $display("Count=%0d",count);
  endfunction
endclass
module test;
  static_methods s1;
  initial begin
    for(int i=0;i<3;i++) begin
      s1=new(i+2);
      s1.display();
    end
    s1.count=100;
    static_methods::disp();
  end
endmodule
/*
OUTPUT:
The non-static value is 2
The non-static value is 3
The non-static value is 4
Count=100
*/
