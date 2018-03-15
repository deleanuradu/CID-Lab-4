module demux( input [1:0] demuxin,
				  input demuxsel,
				  output reg [1:0] demuxout0,
				  output reg [1:0] demuxout1);
				  
always@(*)
begin
	if (demuxsel == 0)
		begin
		demuxout0 = demuxin;
		demux0ut1 = 0;
		end
	else
		begin
		demuxout0 = 0;
		demuxout1 = demuxin;
		end
end		
					
								
endmodule