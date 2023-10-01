//plug pmod-led on PMOD2

module chase
	(
	input CLK, 
	output [7:0] LED
	);
      
    reg [25:0] counter;
    wire CLK2 = counter[18];

    initial begin
        LED[7:0] = 8'b11111110;
    end

    always @(posedge CLK)
    begin
        counter <= counter + 1;
    end

    always @(posedge CLK2)
    begin
        LED <= {LED[6:0],LED[7]};
    end


endmodule
