class c1;
  int a;
  int b;

  function new(int a, int b); //constructor
    this.a = a ; // assigning values to class properties 
    this.b = b;
  endfunction
  function int add (int a, int b);
    int c;
    c = a + b;
    $display("c = %0d", c);
    return c;
  endfunction
endclass

module tb;
  c1 h1;
  initial begin
    h1 = new(2,3);
    h1.add(2,3);
  end
endmodule
    
