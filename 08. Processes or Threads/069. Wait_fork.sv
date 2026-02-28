module wait_fork;
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
      		$display("Begin-3:\na=%0d b=%0d",a,b);
          	#4;
    	end
    join_any
    $display("Out of fork_join");
    wait fork;
      $display("Fork-wait");
  end
endmodule
/*
OUTPUT:
Begin-3:
a=25 b=15
Begin-2:
a=25 b=15
Out of fork_join any
Begin-1:
a=25 b=15
Fork-wait
*/
