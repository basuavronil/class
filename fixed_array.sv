class c1;
  int a;
  bit [3:0] b;
endclass
module tb;
  c1 tr[5];
  initial begin
    foreach( tr[i] ) begin
      tr[i] = new();
      tr[i].a = i + 1;
      tr [i].b = i + 3;
    end
    foreach(tr[i])
      $display("a[%0d] = %0d  b[%0d] = %0d", i, tr[i].a, i, tr[i].b);
  end 
endmodule

    
