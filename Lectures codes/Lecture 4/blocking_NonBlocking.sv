// Code your design here
module blocking_nonbloking();
  int a, b,c,d,e;
  initial begin 
    a<=5;
    b<=23;
    c<=10;
    d<=0;
    
    #10
    d<=a+b;
    e<=d+c;
    
    #10
    //blocking
    d =a+b;
    e =d+c;
    #30
    d=0;
  end 
  
  initial begin 
    $dumpfile("test.vcd");
    $dumpvars;
  end 
endmodule
    
    