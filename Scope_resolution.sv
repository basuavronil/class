class c1;
  int a;
  static int b;
  static function inc_b(); //function is static 
    b++;
    $display("b = %0d", b);
  endfunction
  
  function void inc_a();  //function is automatic 
    a++;
    $display(" a = %0d", a);
  endfunction
endclass

module tb;
  c1 h1 ;
  initial begin
    h1 = new(); 
    h1.a = 10;
    repeat (5) begin
    h1.inc_a();
    end   
  
    repeat (4) begin 
      c1::inc_b(); // scope resolution operator can only be used when the function is static
    end
  
  end
endmodule
/*
 a = 11
 a = 12
 a = 13
 a = 14
 a = 15
b = 1
b = 2
b = 3
b = 4
*/

// Example 2

class c1;
  int a;
  int b;
  
  static function int add (int a, int b);
    int c;
    c = a + b;
    $display("c = %0d", c);
    return c;
  endfunction
endclass

module tb;
  c1 h1;
  initial begin
    c1 :: add (2,3);
  end
endmodule
    
