module csa_8 (
  input logic [7:0] a, b,
  output logic [7:0] sum,
  output logic carry
  );
  // The adder_4 does not align with the picutre in the task. So either
  // the adder_4 module needs to be modifed or another addtion has to be done
  // to account fo the carry in.

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

  adder_4 msb(
    .A(a[7:4]),
    .B(b[7:4]),
    .sum(sum0),
    .carry(carry0)
  );

  // Do addition for Cin == 1, the same as A+B+1
  assign {carry1, sum1} = carry0+sum0+4'd1;

  always_comb begin
    sum[7:4] = c_lo ? sum1 : sum0;
    carry = c_lo ? carry1 : carry0;
  end

endmodule
