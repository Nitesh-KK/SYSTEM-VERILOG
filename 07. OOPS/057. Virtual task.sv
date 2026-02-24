class parent;
  virtual task run();
    $display("Parent execution started");
    #3;
    $display("Parent execution completed");
  endtask
endclass
class child extends parent;
  task run();
    $display("Child execution started");
    #5;
    $display("Child execution completed");
  endtask
endclass
module top;
  parent p1;
  child c1;
  initial begin
    p1=new();
    p1.run();
    c1=new();
    p1=c1;
    p1.run();
    c1.run();
  end
endmodule
/*
OUTPUT:
Parent execution started
parent execution completed
Child execution started
Child execution completed
Child execution started
Child execution completed
*/
