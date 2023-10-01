// Lattice iCEstick (iCE40HX1K)
// October 2023
// Muthanna Alwahash

module led_count
(
  // 12MHz onboard oscilator 
  input  CLK,

  // All pins of J1, J2, J3, and LEDs are set as output
  output LED1, LED2, LED3, LED4, LED5,
  output J1_3, J1_4, J1_5, J1_6, J1_7, J1_8, J1_9, J1_10,
  output J2_1, J2_2, J2_3, J2_4, J2_7, J2_8, J2_9, J2_10,
  output J3_3, J3_4, J3_5, J3_6, J3_7, J3_8, J3_9, J3_10
  
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
  assign { J1_3, J1_4, J1_5, J1_6, J1_7, J1_8, J1_9, J1_10 } = out;
  assign { J2_1, J2_2, J2_3, J2_4, J2_7, J2_8, J2_9, J2_10 } = out;
  assign { J3_3, J3_4, J3_5, J3_6, J3_7, J3_8, J3_9, J3_10 } = out;

endmodule