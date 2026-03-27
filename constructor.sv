a constructor must not have a return type 
 it should not return anything
 
 the main function of a constructor is to 


 1. Assign values to class properties 
 
 class c1;
  int a;
  int b;
  function new(int x, int y);
    this.a = x;   // assigning input to property
    this.b = y;
  endfunction
endclass


2. allocate memories for inner object 

class inner;
  int data;
endclass
class outer;
  inner h;   // handle (no memory yet)
  function new();
    h = new();   // ✅ allocating memory to inner object
  endfunction
endclass


3. Set default Values 

class packet;
  int addr;
  int data;

  function new();
    addr = 32'h0;   // default address
    data = 0;       // default data
  endfunction
endclass

