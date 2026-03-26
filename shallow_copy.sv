class c1;
  int a;
  int b;
endclass

class c2;
  int c;
  int d;
  c1 h1; // h1 is handle name of class c1
  function new ();
    h1 = new();
  endfunction 
  
  function void display();
    $display ("a= %0d  b = %0d  c= %0d d =%0d", h1.a, h1.b, c,d);
  endfunction
endclass

module tb;
  c2 h2, h3;
  initial begin
    h2 = new();
    h2.c = 3;
    h2.d = 4;
    h2.h1.a = 1;
    h2.h1.b = 2;
    h3 = new h2;   // shallow copy
    h2.display();
    h3.display();
    
    /*
a= 1  b = 2  c= 3 d =4
a= 1  b = 2  c= 3 d =4
    */
    
    h3.h1.a = 10;
    h3.h1.b = 15;
    h3.c = 5;
    h3.d = 6;
    h3.display();
    h2.display();

    /*
a= 10  b = 15  c= 5 d =6
a= 10  b = 15  c= 3 d =4
    */
    
    h3 = new h2;
    h3.display();
    h2.display();

    /*
a= 10  b = 15  c= 3 d =4
a= 10  b = 15  c= 3 d =4
    */
    
  end
endmodule
/*
a= 1  b = 2  c= 3 d =4
a= 1  b = 2  c= 3 d =4
a= 10  b = 15  c= 5 d =6
a= 10  b = 15  c= 3 d =4
a= 10  b = 15  c= 3 d =4
a= 10  b = 15  c= 3 d =4
*/

