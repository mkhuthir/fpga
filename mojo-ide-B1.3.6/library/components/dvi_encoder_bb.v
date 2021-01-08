module dvi_encoder_bb (
  input  wire       pclk,           // pixel clock
  input  wire       pclkx2,         // pixel clock x2
  input  wire       pclkx10,        // pixel clock x2
  input  wire       serdesstrobe,   // OSERDES2 serdesstrobe
  input  wire       rstin,          // reset
  input  wire [7:0] blue_din,       // Blue data in
  input  wire [7:0] green_din,      // Green data in
  input  wire [7:0] red_din,        // Red data in
  input  wire       hsync,          // hsync data
  input  wire       vsync,          // vsync data
  input  wire       de,             // data enable
  output wire [3:0] TMDS,
  output wire [3:0] TMDSB);
  
  endmodule