
/*a constructor must not have a return type 
 it should not return anything
 
 the main function of a constructor is to 
 
 1. Assign values to class properties ... store values in class properties */
 
class c1;
  int a;
  int b;
  int c;
  
  function new(int a, int b); //constructor   
    this.a = a ;
    this.b = b;
    this.c = a + b;
    $display ("a= %0d b = %0d c = %0d ", a, b, c);
  endfunction
endclass
module tb;
  c1 h1;
  initial begin
    h1 = new(3,4);
  end
endmodule

/*2. allocate memories for inner object */

class inner;
  int data;
endclass
class outer;
  inner h;   // handle (no memory yet)
  function new();
    h = new();   // ✅ allocating memory to inner object
  endfunction
endclass

/ *3. Set default Values */

class packet;
  int addr;
  int data;

  function new();
    addr = 32'h0;   // default address
    data = 0;       // default data
  endfunction
endclass

// example
class c1;
  int a;
  int b;
  int c;
  function new (int a, int b);
    this.a = a;
    this.b = b;
    this.c = a + b;
    $display ( "a = %0d b = %0d c = %0d ", a, b, c);
  endfunction
endclass 
module m1;
   c1 h1;
  initial begin
    h1 = new(2,3);
    $display ("a_g = %0d b_g = %0d c_g = %0d", h1.a, h1.b, h1.c);
  end
endmodule 
/* a = 2 b = 3 c = 5 
a_g = 2 b_g = 3 c_g = 5*/

class c2;
  int a;
  int b;
  function new(int a, int b);
    int c;
    c = a + b;
    $display ( "a = %0d b = %0d c = %0d", a, b, c );
  endfunction
endclass
module m2;
  c2 h2;
  initial begin
    h2 = new(2,3);
    $display ("a_g = %0d b_g = %0d", h2.a, h2.b);
  end
endmodule

*/a = 2 b = 3 c = 5
a_g = 0 b_g = 0 */


    
