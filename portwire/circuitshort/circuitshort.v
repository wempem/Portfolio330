// Student Name: Matthew Wempe
// Program Name: Lab01 - circuitshort
// Creation Date: 01/23/18
// Last Modified Date: 01/24/18
// CSCI Course: CSCI-330
// Grade Received: A
// Comments: Works great!

//module is created
module circuitshort(a,b,c, out1);
// wires are assigned
input wire a;
input wire b;
input wire c;
output wire out1;

wire notb;

wire Y0;
// not has wires assigned
not(notb, b);
// and has wires assigned
and(Y0, notb, c);
// or is assigned and ouput goes to ou1
or(out1, Y0, a);
// module end
endmodule
