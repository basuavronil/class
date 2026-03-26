class c1;
  int a;
  int b;
endclass

class c2;
  int c;
  int d;
  c1 h1;
  function new ();
    h1 = new();
  endfunction
  
  function copy (c2 h2);
    this.c = h2.c ;          
    this.d = h2.d;
    this.h1.a = h2.h1.a;
    this.h1.b = h2.h1.b;
  endfunction
  
  function void display ();
    $display("a = %0d b = %0d  c= %0d  d=%0d",  h1.a, h1.b, c ,d);
  endfunction
endclass

module tb;
  c2 h3, h4;
  initial begin
    h3 = new();
    h3.c = 3;
    h3.d = 4;
    h3.h1.a = 1;
    h3.h1.b = 2;
    h3.display();
    h4 = new();  // creating memory for h4 which is not in shallow copy 
    h4.copy(h3); // deep copying
    h4.display();
    /* 
a = 1 b = 2  c= 3  d=4
a = 1 b = 2  c= 3  d=4
    */
    
    h4.c = 10;
    h4.d = 20;
    h4.h1.a = 30;
    h4.h1.b = 40;
    h4.display();
    h3.display();
/*
a = 30 b = 40  c= 10  d=20
a = 1 b = 2  c= 3  d=4
*/

    
    h4.copy(h3);
    h4.display();

    /*
    a = 1 b = 2  c= 3  d=4
    a = 1 b = 2  c= 3  d=4
    */
  end
endmodule

    
