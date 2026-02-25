virtual class parent;
  string str="System Verilog";
  function void disp();
    $display("String in parent: %s",str);
  endfunction
endclass
class child extends parent;
  string str="Verilog";
  function void display();
    $display("Sting in child: %s",str);
  endfunction
endclass
module top;
  child c1;
  initial begin
    c1=new();
    c1.str="Protocols";
    c1.disp();
    c1.display();
  end
endmodule
/*
OUTPUT:
String in parent: System Verilog
Sting in child: Protocols
*/
