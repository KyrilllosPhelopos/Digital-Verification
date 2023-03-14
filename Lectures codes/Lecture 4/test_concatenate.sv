// Code your design here
module test_concatenate();
  logic [7:0] a,b,c,d;
  logic [23:0] f,e;
  
  initial begin
    #30;
    a=8'b11110000;
    b=8'b11001100;
    c=8'b11100011;
    #20
    e= {a,b[3:0],c,4'b1111};
    #40
    e=0;
  end 
  initial begin 
    $dumpfile("test.vcd");
    $dumpvars;
  end 
endmodule 