class transport;
  string vehicle;
  function new(string vehicle="unknown");
    this.vehicle=vehicle;
  endfunction
endclass

module tb;
  transport vh[$];
  initial begin
    transport t=new("Bike");
    vh.push_back(t);
    t=new("Car");
    vh.push_back(t);
    t=new("Bus");
    vh.push_back(t);
    t=new("Auto");
    vh.push_back(t);
    foreach(vh[i])
      $display("Transport[%0d] : %s",i,vh[i].vehicle);
    $display("Transport : %p",vh);
  end
endmodule
/*
OUTPUT:
Transport[0] : Bike
Transport[1] : Car
Transport[2] : Bus
Transport[3] : Auto
Transport : '{$unit_0x4ccdf83b::transport@2_1, $unit_0x4ccdf83b::transport@4_1, $unit_0x4ccdf83b::transport@6_1, $unit_0x4ccdf83b::transport@8_1}
*/
