// Lattice iCEstick (iCE40HX1K)
// LED_Blinker
// Muthanna Alwahash
// (c) Sept 2023

module blink 
(
  input  CLK,

  output LED1,
  output LED2,
  output LED3,
  output LED4,
  output LED5,

  output Pmod1,
  output Pmod2,
  output Pmod3,
  output Pmod4,
  output Pmod7,
  output Pmod8,
  output Pmod9,
  output Pmod10
);

  localparam bits = 8;  // number of bits that you would like to toggle
  localparam div  = 22; // delay of toggle in number of divider bits

  reg [ bits+div-1:0] counter = 0;
  reg [ bits-1:0]     out;

  always @(posedge CLK) begin
    counter <= counter + 1;
    out     <= (counter >> div);  // take MSB "bits" from counter
  end

  assign { LED1, LED2, LED3, LED4, LED5 } = out;
  assign { Pmod10, Pmod9, Pmod8, Pmod7, Pmod4, Pmod3, Pmod2, Pmod1 } = out;
  
endmodule