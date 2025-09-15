module decoder_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [15:0] one_hot;

  // Instantiate the decoder module
  decoder uut (
    .binary(binary),
    .one_hot(one_hot)
  );

  // Complete your testbench here
  initial begin
    binary = 0;
    // Expected = 0
    #10ns
    binary = 1;
    // Expected = 1
    #10ns
    binary = 2;
    // Expected = 2
    #10ns
    binary = 7;
    // Expected = 7
    #10ns
    binary = 12;
    // Expected = 12
    #10ns
    binary = 15;
    // Expected = 15
  end
endmodule
