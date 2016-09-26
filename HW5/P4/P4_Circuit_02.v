/*************************
 * Derek Prince          *
 * Problem Set #5        *
 * Problem 4             *
 * Circuit 2 description *
*************************/

module circuit_02(y, x1, x2, x3);
// outputs
output y;
input x1, x2, x3;

// circuit behaviour
assign a = (~x1|x2);
assign b = (~x1|x2|x3);
assign c = (x1|~x2|~x3);
// output
assign y = (a&b&c);

endmodule
