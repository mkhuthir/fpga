module dvi_decoder_bb (
  input  wire tmdsclk_p,      // tmds clock
  input  wire tmdsclk_n,      // tmds clock
  input  wire blue_p,         // Blue data in
  input  wire green_p,        // Green data in
  input  wire red_p,          // Red data in
  input  wire blue_n,         // Blue data in
  input  wire green_n,        // Green data in
  input  wire red_n,          // Red data in
  input  wire exrst,          // external reset input, e.g. reset button

  output wire reset,          // rx reset
  output wire pclk,           // regenerated pixel clock
  output wire pclkx2,         // double rate pixel clock
  output wire pclkx10,        // 10x pixel as IOCLK
  output wire pllclk0,        // send pllclk0 out so it can be fed into a different BUFPLL
  output wire pllclk1,        // PLL x1 output
  output wire pllclk2,        // PLL x2 output

  output wire pll_lckd,       // send pll_lckd out so it can be fed into a different BUFPLL
  output wire serdesstrobe,   // BUFPLL serdesstrobe output
  output wire tmdsclk,        // TMDS cable clock

  output wire hsync,          // hsync data
  output wire vsync,          // vsync data
  output wire de,             // data enable
  
  output wire blue_vld,
  output wire green_vld,
  output wire red_vld,
  output wire blue_rdy,
  output wire green_rdy,
  output wire red_rdy,

  output wire psalgnerr,

  output wire [29:0] sdout,
  output wire [7:0] red,      // pixel data out
  output wire [7:0] green,    // pixel data out
  output wire [7:0] blue);    // pixel data out
  
  endmodule