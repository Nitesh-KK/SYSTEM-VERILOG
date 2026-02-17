module union_with_typedef;
  typedef union {
    int id;
    logic [7:0]data;
    bit valid;
  }packet;
  packet p1,p2,p3;
  initial begin
    p1.id=5;p2.id=10;p3.id=15;
    p1.data=8'haf;p2.data=8'haf;p3.data=8'h59;
    p1.valid=1;p2.valid=0;p3.valid=1;
    $display("PACKETS:");
    $display("Id: %0d |Data: %0d |Valid: %0d",p1.id,p1.data,p1.valid);
    $display("Id: %0d |Data: %0d |Valid: %0d",p2.id,p2.data,p2.valid);
    $display("Id: %0d |Data: %0d |Valid: %0d",p3.id,p3.data,p3.valid);
  end
endmodule
/*
OUTPUT:
PACKETS:
Id: -81 |Data: 175 |Valid: 1
Id: 0 |Data: 0 |Valid: 0
Id: 89 |Data: 89 |Valid: 1
*/
