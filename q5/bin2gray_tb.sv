module bin2gray_tb;

  // Inputs
  logic [3:0] binary;

  // Outputs
  logic [3:0] gray;

  // complete
  bin2gray uut(
    .binary(binary),
    .gray(gray)
  );

  initial begin
    // All values tested
    binary = 0;
    #10ns
    binary = 'd1;
    #10ns
    binary = 'd2;
    #10ns
    binary = 'd3;
    #10ns
    binary = 'd4;
    #10ns
    binary = 'd5;
    #10ns
    binary = 'd6;
    #10ns
    binary = 'd7;
    #10ns
    binary = 'd8;
    #10ns
    binary = 'd9;
    #10ns
    binary = 'd10;
    #10ns
    binary = 'd11;
    #10ns
    binary = 'd12;
    #10ns
    binary = 'd13;
    #10ns
    binary = 'd14;
    #10ns
    binary = 'd15;
  end
endmodule
