// Lattice iCEstick (iCE40HX1K)
// LED_Blinker
// Muthanna Alwahash
// (c) Sept 2023


module IrDA 
(

);
endmodule 

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

  localparam bits = 8;  // number of bits that you would like to toggle
  localparam div  = 22; // delay of toggle in number of divider bits

  reg [ bits+div-1:0] counter = 0;
  reg [ bits-1:0]     out;

  always @(posedge CLK) begin
    counter <= counter + 1;
    out     <= (counter >> div);  // take MSB "bits" from counter
  end

  assign { LED1, LED2, LED3, LED4, LED5 } = out;
  assign { PMOD7, PMOD6, PMOD5, PMOD4, PMOD3, PMOD2, PMOD1, PMOD0 } = out;
  
endmodule