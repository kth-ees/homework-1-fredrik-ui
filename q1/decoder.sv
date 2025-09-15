module decoder (
  input logic [3:0] binary,
  output logic [15:0] one_hot
);
  // For the synthesized schematic to be a demux, the one hot value
  // needs to passed in as an arguemnt to the module. In this case
  // it synthesize a schematic more akin to a decoder.
  always_comb begin
    one_hot = 0;
    one_hot[binary] = 1'b1;
  end
endmodule
