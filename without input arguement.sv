bit [31:0] data;
  int id;
endclass
module tb;
  c1 h1;
  initial begin
    h1 = new();
    h1.data = 5;
    h1.id = 2;
    $display("%0d %0d", h1.data, hi.id);
  end
endmodule
