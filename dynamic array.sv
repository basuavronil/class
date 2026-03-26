class c1;
  int a;
  bit [3:0] b;
endclass

module tb;
  c1 h1[];
  initial begin
    h1 = new[5];   
    foreach (h1[i]) begin
      h1[i] = new();  
      h1[i].a = i*2;
      h1[i].b = i+1;
    end
    foreach (h1[i]) begin
      $display("a[%0d] = %0d b[%0d] = %0d", i, h1[i].a, i, h1[i].b);
    end
  end
endmodule
