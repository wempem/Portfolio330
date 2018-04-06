// Student Name: Matthew Wempe
// Program Name: Lab01 - circuitlong
// Creation Date: 01/23/18
// Last Modified Date: 01/24/18
// CSCI Course: CSCI-330
// Grade Received: A
// Comments: Works great!


// module is created.
module circuitlong(a,b,c,out1);

// input/output wires are set 
input wire a;
input wire b;
input wire c;
output wire out1;

// additional wires are created
wire nota;
wire notb;
wire notc;

wire Y0;
wire Y1;
wire Y2;
wire Y3;
wire Y4;
// nots are created 
not(nota, a);
not(notb, b);
not(notc, c);

// ands are made useing previous wires
and(Y0, nota, notb, c);
and(Y1, a, notb, notc);
and(Y2, a, notb, c);
and(Y3, a, b, notc);
and(Y4, a, b, c);
// or is assigned and output is assigned 
or(out1,Y0,Y1,Y2,Y3,Y4);

//end module
endmodule
