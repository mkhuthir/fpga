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

	reg[15:0] div_cntr1;
	reg[6:0] div_cntr2;
	reg[1:0] dec_cntr;
	reg half_sec_pulse;
		
	always@(posedge clk)
		begin
		div_cntr1 <= div_cntr1 + 1;
		if (div_cntr1 == 0) 
			if (div_cntr2 == 91) 
				begin
				div_cntr2 <= 0;
				half_sec_pulse <= 1;  
				end
			else
				div_cntr2 <= div_cntr2 + 1;
		else
			half_sec_pulse <= 0;
		
		if (half_sec_pulse == 1)	
			dec_cntr <= dec_cntr + 1;
			
		end	
		
		
	assign LED1 = (dec_cntr == 0) ;
	assign LED2 = (dec_cntr == 1) ;
	assign LED3 = (dec_cntr == 2) ;
	assign LED4 = (dec_cntr == 3) ;
	assign LED5 = 1'b1;
				
endmodule
