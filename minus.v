module minus( output [3:0] out,
							input [1:0] in0,
							input [1:0] in1
							);

assign out = in0 - in1;

endmodule