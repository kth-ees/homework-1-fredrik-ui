module csa_8_tb;

  // Inputs
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum;
  logic carry;

  // complete
  csa_8 uut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    a = 0;
    b = 0;
    #10ns
    // Lower 4 bits addtion test
    a = 5;
    b = 3;
    // Expected sum = 8, carry = 0
    #10ns
    // Lower 4 bits addition with overflow
    a = 15;
    b = 15;
    // Expected sum = 1e, carry = 0 (4bit addition produces a carry)
    #10ns
    // All 8 bits addition, with a overflow
    a = 240;
    b = 16;
    // Expected sum = 0, carry = 1
    #10ns
    // Carry in for 4 upper bits is 0 but the whole addition results in overflow
    a = 'b11000011;
    b = 'b11101000;
    // Expected sum = 171 (or AB in hex), carry = 1
  end

endmodule
