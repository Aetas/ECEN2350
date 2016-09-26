/*************************
 * Derek Prince          *
 * Problem Set #5        *
 * Problem 3             *
 * Circuit testbench     *
*************************/

`timescale 1ns/1ns  //why not
module circuit_tb1();
  
  reg clk;        // clock
  reg[2:0] count; // 3-bit register for inputs
  wire y1;        // output
  wire y2;
  
  initial begin   // initialize
    clk = 1;
    count = -1;   // so the start value will be 0
  end

  always #5 clk = ~clk; // generate clk (bitwise)
  always @(posedge clk)
    count = count + 1;  // count += 1; ?

  // instantiate citcuit 1 module
  circuit_01 MUT1(y1, count[2], count[1], count[0]);
  // instantiate circuit 2 module
  circuit_02 MUT2(y2, count[2], count[1], count[0]);
  
endmodule // circuit_tb1
