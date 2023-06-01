module predictor(input wire request, result, clk, taken, output reg prediction);
//request 1 next clks next we say is taken or not

// result 1 next they say is taken or not reALLY
	reg [1:0] state = 0;
	
	
	
	always@(posedge clk)
	begin
		if(request == 1)
		begin
			prediction = state[1];
		end
		if(result)
		begin
			if (taken)
			begin
				if(state != 3)
					state = state + 1;
				
			end
			else
			begin
				if(state)
					state = state - 1;
			end
			
			
		end
		
	
	end
	
	




// Your code
	

endmodule