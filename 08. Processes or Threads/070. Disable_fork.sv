module disable_fork;
  int a,b;
  initial begin
    fork :fork_begin
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
    $display("Before disabling fork");
    disable fork_begin;
    $display("After disabling");
  end
endmodule
/*
OUTPUT:
Before disabling fork
After disabling
Begin-2:
a=25 b=15
Begin-1:
a=25 b=15
Begin-3:
a=25 b=15
*/
