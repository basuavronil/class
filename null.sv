class c1;
  int a;
  bit [3:0] b;
endclass
module test;
  c1 h1, h2;
  initial begin
    h1 = new();
    begin
    if (h1 != null)
      $display("Object is created");
    else 
      $display("object is null" );
    end
    begin
      if (h2 != null)
      $display("Object is created");
    else 
      $display("object is null" );
    end
  end 
endmodule
