module csa_8 (
  input logic [7:0] a, b,
  output logic [7:0] sum,
  output logic carry
  );
  // Add the lower 4 bits of a and b, the carry out value
  // is a control signal.
  logic c_lo, carry1, carry0;
  logic [3:0] sum0, sum1;

    adder_4 lower4bits(
      .A(a[3:0]),
      .B(b[3:0]),
      .sum(sum[3:0]),
      .carry(c_lo)
    );

  adder_4 upper4bits_no_cin(
    .A(a[7:4]),
    .B(b[7:4]),
    .sum(sum0),
    .carry(carry0)
  );

  // Do addition for Cin == 1, the same as A+B+1
  adder_4 upper4bits_cin(
    .A(sum0),
    .B(4'd1),
    .sum(sum1),
    .carry(carry1)
  );

  always_comb begin
    sum[7:4] = c_lo ? sum1 : sum0;
    carry = c_lo ? carry1 : carry0;
  end

endmodule
