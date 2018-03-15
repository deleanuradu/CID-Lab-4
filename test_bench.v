module test_bench();

reg input0;
reg input1;
reg sel;

top my_top1(
              //.internal_wire(.external_wire)
					.in0(input0),
					.in1(input1),
				    .sel(sel),
					 .out0(),
					 .out1()
            );
//initial blocks


initial
begin
	input0 = 1;
	input1 = 0;
	sel = 0;
end


initial
begin
#5 input1 = 1;
#15 sel = 1;
	input1 = 0;	
#5 input0 = 0;
#5 input1 = 1;
#10 sel = 0;

end



initial
begin 
	#90 $stop;
end

endmodule

