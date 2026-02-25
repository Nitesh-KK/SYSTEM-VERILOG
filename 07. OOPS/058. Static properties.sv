class counter;
  static int count=0;
  int count1=1;
  function void display();
    count++;
    count1++;
    $display("Count=%0d  Count1=%0d",count,count1);
  endfunction
endclass
module top;
  counter ct;
  initial begin
    repeat(5) begin
      ct=new();
      ct.display();
    end
  end
endmodule
/*
OUTPUT:
Count=1  Count1=2
Count=2  Count1=2
Count=3  Count1=2
Count=4  Count1=2
Count=5  Count1=2
*/
