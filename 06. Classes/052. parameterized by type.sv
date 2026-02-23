class data #(parameter a,type veh=string);
  bit [a-1:0]x;
  veh str;
  function new(int x,string str);
    this.x=x;
    this.str=str;
  endfunction
  function void display();
    $display("The value %0d and string %s",x,str);
  endfunction
endclass
data#(4) da;
module tb;
  initial begin
    da=new(10,"Sport");
    da.display();
  end
endmodule
/*
OUTPUT:
The value 10 and string Sport
*/
