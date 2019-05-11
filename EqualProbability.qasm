OPENQASM 2.0;
include "qelib1.inc";
gate nG0 ( param ) q  {
  U ( 0, 0, param ) q;
}

qreg q[4];
creg c[4];

h q[0];
h q[1];
h q[2];
s q[0];
s q[1];
s q[2];
h q[0];
h q[1];
h q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
