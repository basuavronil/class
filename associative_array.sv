class c1;
  int a;
  bit [3:0] b;
endclass
module tb;
  c1 h1[int];  // associative array handle declaration with only index 
  initial begin
    foreach (h1[i]) begin end  
    for (int i = 0; i < 5; i++) begin
      h1[i] = new();      
      h1[i].a = i * 2;
      h1[i].b = i + 1;
    end
    // display
    foreach (h1[i]) begin
      $display("a[%0d] = %0d  b[%0d] = %0d", i, h1[i].a, i, h1[i].b);
    end
  end
endmodule
