module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);

  // A case could also be used to manually check each conversion
  localparam logic [15:0] overflow = 16'b1111_1100_0000_0000;
  localparam logic [15:0] bcd1 = 16'b1010_1010_1010_1010;
  localparam logic [15:0] bcd2 = 16'b0011_0000_1100_1100;
  localparam logic [15:0] bcd3 = 16'b1100_0000_1111_0000;
  localparam logic [15:0] bcd4 = 16'b0000_0011_0000_0000;

  always_comb begin
    bcd = 0;
    bcd[0] = bcd1[binary];
    bcd[1] = bcd2[binary];
    bcd[2] = bcd3[binary];
    bcd[3] = bcd4[binary];
    carry = overflow[binary];
  end

endmodule
