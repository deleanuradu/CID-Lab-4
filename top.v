module top (input [1:0] in0,
				input  [1:0] in1,		
				input  sel,		
				output  [3:0] out0,
		      output out1);

wire [2:0] demux_out0_minus_in1;


demux demux1(.demuxin(in0),
		.demuxout0(demux_out0_minus_in1),
		.demuxout1(out1),
	   .demuxsel(sel) 
		);
	
	
minus minus1(.in0(in0),
	   .in1(demux_out0_minus_in1),
		.out(out0)
		);	

		
endmodule						