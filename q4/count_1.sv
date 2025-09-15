module count_1 (
  input logic [3:0] a,
  output logic [2:0] out
);
  assign out = a[0]+a[1]+a[2]+a[3];
endmodule
