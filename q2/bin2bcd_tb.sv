module bin2bcd_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [3:0] bcd;
  logic carry;

  // complete your tb

  bin2bcd uut(
    .binary(binary),
    .bcd(bcd),
    .carry(carry)
  );

  initial begin
    bcd = 0;
    binary = 0;
    // Expected bcd = 0, carry = 0
    #10ns
    binary = 3;
    // Expected bcd = 3, carry = 0
    #10ns
    binary = 7;
    // Expected bcd = 7, carry = 0
    #10ns
    binary = 10;
    // Expected bcd = 0, carry = 1
    #10ns
    binary = 15;
    // Expected bcd = 5, carry = 1
  end

endmodule
