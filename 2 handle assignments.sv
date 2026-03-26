class c1;
  int b;
  bit [5:0] a;
endclass
module tb;
  c1 h1, h2, h3;
  initial begin
    h1 = new();
    h2 = h1;
    h3 = h1;
    h2.a = 20;
    h3.b = 10;
    $display ("%0d %0d", h1.a, h1.b);
  end
endmodule
// a = 20 b = 10 
