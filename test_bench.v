module test_bench();

reg input0;
.
...

top my_top1(
              //.internal_wire(.external_wire)
					.in0(input0),
					.in1(),
				    .sel(),
					 .out0(),
					 .out1()
            );
//initial blocks


initial
begin
	input0 = 0;
	.
	...
	
end


initial
begin
#20 sel = 1;
#20 sel = 0;

end



initial
begin 
	#90 $stop;

end

endmodule
