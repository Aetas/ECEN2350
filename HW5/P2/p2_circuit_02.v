/*************************
 * Derek Prince          *
 * Problem Set #5        *
 * Problem 2             *
 * Circuit 2 description *
*************************/

module circuit_02(y2, x1, x2, x3, x4);
  // I/O
  output y2;
  input x1, x2, x3, x4;
  
  // structure
  // nots
  not (nx3, x3), (nx4, x4);
  // maxterms
  or (a, x1, nx3);
  or (b, x1, x2, nx4);
  or (c, x2, nx3, nx4);
  // output
  and (y2, a, b, c);
  
endmodule //circuit_01
