module blink 
(
  input  CLK,
  output LED1,
  output LED2,
  output LED3,
  output LED4,
  output LED5
);

  localparam bits = 5;
  localparam delay = 22;

  reg [ bits + delay-1 :0 ] counter = 0;
  reg [ bits - 1 :0] out;

  always @(posedge CLK) begin
    counter <= counter + 1;
    out <= counter >> delay;
  end

  assign { LED1, LED2, LED3, LED4, LED5 } = out;
endmodule