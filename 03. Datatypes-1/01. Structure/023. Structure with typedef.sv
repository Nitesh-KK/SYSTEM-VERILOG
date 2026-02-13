module struct_with_typedef;
  typedef struct {
    int id;
    logic [7:0]data;
    bit valid;
  }packet;
  packet p1,p2,p3;
  initial begin
    p1='{5,8'h4a,1};
    p2='{10,8'haf,0};
    p3='{15,8'h59,1};
    $display("PACKETS:");
    $display("%p",p1);
    $display("%p",p2);
    $display("%p",p3);
  end
endmodule


/*
OUTPUT:

PACKETS:
'{id:5, data:'h4a, valid:'h1}
'{id:10, data:'haf, valid:'h0}
'{id:15, data:'h59, valid:'h1}
*/
