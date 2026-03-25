class transaction;
  bit [31:0] data;
  int id;
  function new ( int m_data, int m_id);
    data = m_data;
    id = m_id;
  endfunction
  
  function display ( );
    $display ( " %0d %0d", data, id);
  endfunction
endclass
module test;
  transaction tr;
  initial begin
    tr = new(2, 3);
    tr.display();
  end
endmodule
    
