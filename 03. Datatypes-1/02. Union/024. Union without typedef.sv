module union_without_typedef;
  union{
    int id;
    logic [3:0] data;
    bit valid;
  }packet;
  initial begin
    packet.id=10;
    packet.data=3;
    packet.valid=1;
    $display("Packet:\nid:%0d | data:%h | bit:%b",packet.id,packet.data,packet.valid);
  end
endmodule
/*
OUTPUT:
Packet:
id:3 | data:3 | bit:1
*/
