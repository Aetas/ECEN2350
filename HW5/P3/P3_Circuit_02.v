/*************************
 * Derek Prince          *
 * Problem Set #5        *
 * Problem 3             *
 * Circuit 2 description *
*************************/

// NOR-only logic gate function

module circuit_02(y2, x1, x2, x3);
  // outputs
  output y2;
  input x1, x2, x3;

  // Circuit structure
  not (nx3, x3);
  //maxterms
  nor (a, x1, x2);
  nor (b, x1, x2, nx3);
  //output
  nor (y2, a, b);

endmodule // end circuit_01
