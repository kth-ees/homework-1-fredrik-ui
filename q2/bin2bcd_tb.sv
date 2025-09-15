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
    #10ns
    binary = 3;
    #10ns
    binary = 7;
    #10ns
    binary = 10;
    #10ns
    binary = 15;
  end

endmodule
