// Lattice iCEstick (iCE40HX1K)
// LED_Rotation
// Muthanna Alwahash
// (c) Sept 2023

module LED_Rotation(
    
	input  clk,

    output LED1,
    output LED2,
    output LED3,
    output LED4,
    output LED5
    
	);

	reg[19:0] 	div;		// Clock divider (2^20 bits)
	reg[1:0] 	count;		// LED counter (0-3 = 2^2 bits)
			
	always@(posedge clk)
		begin
			div <= div + 1;
			if (div == 0) count <= count + 1;
		end	
				
	assign LED1 = (count == 0);
	assign LED2 = (count == 1);
	assign LED3 = (count == 2);
	assign LED4 = (count == 3);
	assign LED5 = 1'b1;
				
endmodule
