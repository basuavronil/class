class c1;
  int a;
  int b;
  function new ( int a , int b);
    this.a = a;
    this.b = b;
    $display ( "a = %0d b = %0d", a, b);
  endfunction
  
  function int add(int a, int b);
    add = a + b;
  endfunction
endclass
//function new () and function add doesnt have any connection with each other
// this.a = a updates global variables ... input arguments such as ... function int add(int a, int b)... are internal to a function and hs no relation with output variables 
// input arguements diff than global variables ( eg c, d) can be used would give the same result for eg ...
// function int add (int c, int d); add = c + d;

module tb;
  c1 h1;
  initial begin
    h1 = new(2,3);
    $display ("%0d", h1.add(3,4));
    $display ( "%0d %0d", h1.a, h1.b); 
  end
endmodule 
