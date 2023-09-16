// Lattice iCEstick (iCE40HX1K)
// LEDs Blinker
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

  output PMOD0,
  output PMOD1,
  output PMOD2,
  output PMOD3,
  output PMOD4,
  output PMOD5,
  output PMOD6,
  output PMOD7
);

  localparam bits = 8;
  localparam delay = 22;

  reg [ bits + delay-1:0] counter = 0;
  reg [ bits - 1      :0] out;

  always @(posedge CLK) begin
    counter <= counter + 1;
    out     <= counter >> delay;
  end

  assign { LED1, LED2, LED3, LED4, LED5 } = out;
  assign { PMOD0, PMOD1, PMOD2, PMOD3, PMOD4, PMOD5, PMOD6, PMOD7 } = out;
  
endmodule