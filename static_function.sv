// we cannot pass external automatic calue in a static function 
//howver automatic variables internal to the function are allowed 
class c1;
  int a;
  static int b;
  int c;
  static int d;
  
  static function int sum ();
    int e;
    e = b + d;
    $display ("e = %0d", e);
    return e;
  endfunction
endclass

module tb;
  initial begin
    c1::b = 5;
    c1::d = 10;
    c1::sum();
  end
endmodule

// passing automatic external variable in the static function 
class c1;
  int a;
  static int b;
  int c;
  static int d;
  
  static function int sum ();
    int e;
    e = b + a;
    $display ("e = %0d", e);
    return e;
  endfunction
endclass

module tb;
  initial begin
    c1::b = 5;
    c1::a = 10;
    c1::sum();
  end
endmodule
//Hierarchical reference to automatic variable 'a' is not legal.
