module String_manipulation;
  string s;
  initial begin
    s="Hello world";
    $display("String : %s",s);
    $display("String length: %d",s.len());
    $display("String upper: %s",s.toupper());
    $display("String lower: %s",s.tolower());
    $display("String character: %c",s[0]);
    $display("Substring: %s",s.substr(0,4));
  end
endmodule

/*
OUTPUT:
String : Hello world
String length:          11
String upper: HELLO WORLD
String lower: hello world
String character: H
Substring: Hello
*/
