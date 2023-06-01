module predictor(input wire request, result, clk, taken, output reg prediction);
//request 1 next clks next we say prediction


// result 1 next they say is taken or not reALLY
	reg [1:0] state = 0;
	
	reg waitingforreq = 0;
	//reg waitingforres = 0;
	
	
	
	
	
	
	always@(posedge clk)
	begin
		if(request == 1 && waitingforreq)
		begin
			prediction = state[1];
			waitingforreq = 0;
		end
		if(result && waitingforreq==0)
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
			
			waitingforreq = 1;
			
		end
		
	
	end
	
	




// Your code
	

endmodule