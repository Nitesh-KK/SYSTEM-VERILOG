module unique_case;
  logic x=2'b01;
  initial begin
    unique case(x)
      00: $display("Value is %0b",x);
      01: $display("Value is %0b",x);
      10: $display("Value is %0b",x);
      11: $display("Value is %0b",x);
      01: $display("Value is %0b",x);
    endcase
  end
endmodule
/*
OUTPUT:
Value is 1
xmsim: *W,MCONDE: Unique case violation:  Multiple matching case item expressions at {line=6:pos=7 and line=9:pos=7}.
*/
