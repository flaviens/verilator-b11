module top(clkin_data, in_data, out_data, probe_data);
  wire celloutsig_0z;
  wire [1:0] celloutsig_1z;
  wire celloutsig_2z;
  input clkin_data;
  wire clkin_data;
  input [95:0] in_data;
  wire [95:0] in_data;
  output [95:0] out_data;
  wire [95:0] out_data;
  output [31:0] probe_data;
  wire [31:0] probe_data;
  assign celloutsig_1z = { in_data[54], celloutsig_0z } & { in_data[42], celloutsig_0z };
  assign celloutsig_0z = in_data[83] < in_data[74];
  assign celloutsig_2z = in_data[65:64] < in_data[83:82];
  assign { out_data[33:32], out_data[0] } = { celloutsig_1z, celloutsig_2z };
endmodule
