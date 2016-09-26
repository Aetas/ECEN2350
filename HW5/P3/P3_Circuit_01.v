/*************************
 * Derek Prince          *
 * Problem Set #5        *
 * Problem 3             *
 * Circuit 1 description *
*************************/

//original formula in SOP form

module circuit_01(y1, x1, x2, x3);
  // outputs
  output y1;
  input x1, x2, x3;
  
  // Circuit structure
  not (nx1, x1), (nx3, x3);
  //minterms
  and (a, nx1, x2, nx3);
  and (b, nx1, x2, x3);
  and (c, x1, x2, nx3);
  //output/sum
  or (y1, a, b, c);
  
endmodule // end circuit_01
