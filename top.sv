module top(clkin_data, in_data, out_data);
  wire celloutsig_0z;
  wire [1:0] celloutsig_1z;
  input clkin_data;
  wire clkin_data;
  input [95:0] in_data;
  wire [95:0] in_data;
  output [95:0] out_data;
  wire [95:0] out_data;
  assign celloutsig_0z = !(in_data[93] ? in_data[78] : in_data[2]);
  assign celloutsig_1z = { in_data[14], celloutsig_0z } & { in_data[11], celloutsig_0z };
  assign { out_data[32], out_data[1:0] } = { celloutsig_0z, celloutsig_1z };
endmodule
