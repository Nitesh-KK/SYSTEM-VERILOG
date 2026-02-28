module fork_join_none;
  int a,b;
  initial begin
    fork 
      begin
      		a=5;
      		b=10;
      		#5;
      		$display("Begin-1:\na=%0d b=%0d",a,b);
    	end
    	begin
      		a=2;
      		b=5;
      		#2;
      		$display("Begin-2:\na=%0d b=%0d",a,b);
    	end
    	begin
      		a=25;
      		b=15;
          	#15;
      		$display("Begin-3:\na=%0d b=%0d",a,b);
    	end
    join_none
    $display("Out of fork_join none");
  end
endmodule
/*
OUTPUT:
Out of fork_join none
Begin-2:
a=25 b=15
Begin-1:
a=25 b=15
Begin-3:
a=25 b=15
*/
