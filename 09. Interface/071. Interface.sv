module add(add_in ha);
  assign {ha.carry,ha.sum}=ha.a+ha.b;
endmodule

interface add_in;
  logic a;
  logic b;
  logic sum;
  logic carry;
endinterface

module test();
  add_in ha();
  add a1(ha);
  initial begin  
    $monitor("a=%b\t b=%b\t sum=%b\t carry=%b",ha.a ,ha.b ,ha.sum ,ha.carry);  
    ha.a = 0; ha.b= 0;  
    #1;  
    ha.a = 1; ha.b= 0;  
    #1;  
    ha.a = 0; ha.b= 1;  
    #1;  
    ha.a= 1; ha.b= 1;  
  end  
endmodule
/*
OUTPUT:
a=0	 b=0	 sum=0	 carry=0
a=1	 b=0	 sum=1	 carry=0
a=0	 b=1	 sum=1	 carry=0
a=1	 b=1	 sum=0	 carry=1
*/
