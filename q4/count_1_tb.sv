module count_1_tb;

  // Inputs
  logic [3:0] a;

  // Outputs
  logic [2:0] out;

  count_1 uut(
    .a(a),
    .out(out)
  );

  initial begin
    a = 0;
    // Expected result = 0
    #10ns
    a = 'b0001;
    // Expected result = 1
    #10ns
    a = 'b0011;
    // Expected result = 2
    #10ns
    a = 'b1110;
    // Expected result = 3
    #10ns
    a = 'b1111;
    // Expected result = 4

  end
endmodule
