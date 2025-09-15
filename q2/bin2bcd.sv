module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);
  // Need to seperate the tens digit and ones digit.
  // Tens digit = carry
  // The schematic shows that the muxes have constans input values.
  // These values are not provided as arugments ot the module, so define
  // them as localparameters.

  // Checking if there is a carry is easy, just index into a value where
  // bit 15-10 are set to one.

  // To find the ones place each bit has to be checked. Take 13 (1101) as an example.
  // The carry is 1 and bcd is 3 (0011). To create the 3, we can see the resulting 4 bits as 4 multiplexers.
  // 1 multiplxer for each bit. To create a 3 for bcd 13 needs to yeild 1 at the correct postions.
  // Basically the 4 muliplxers are lookup tables for each bit.
  //Looking at the table (from the pdf) we can see the combinations to create each number.

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
