class c1;
  int a;
  static int b;
  int c;
  
  function void one();
    a++;
    b++;
    c++;
    $display ("a = %0d",a);
    $display ("b = %0d",b);
    $display ("c = %0d",c);
  endfunction
endclass

module tb;
  c1 h[3];
  initial begin
    foreach (h[i]) begin
      h[i] = new();
      h[i].one();
    end
  end
endmodule
/*
a = 1
b = 1
c = 1
a = 1
b = 2
c = 1
a = 1
b = 3
c = 1
*/
lass c1;
  int a;
  static int b;
  int c;
  
  function void one();
    a++;
    b++;
    c++;
    $display ("a = %0d",a);
    $display ("b = %0d",b);
    $display ("c = %0d",c);
  endfunction
endclass

module tb;
  c1 h1;
  initial begin
      h1 = new();
    repeat (3) begin
      h1.one();
    end
  end
endmodule
/*
a = 1
b = 1
c = 1
a = 2
b = 2
c = 2
a = 3
b = 3
c = 3
*/
