// Muthanna Alwahash
// October 2023

module blink (
    input sys_clk,          // clk input
    input sys_rst_n,        // reset input
    output reg [5:0] led    // 6 LEDS pin
);

reg [23:0] counter;

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        counter <= 24'd0;                   // System reset
    else if (counter < 24'd1349_9999)       // Before reaching 0.5s delay
        counter <= counter + 1'b1;
    else
        counter <= 24'd0;                   // Every 0.5s delay
end

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        led <= 6'b111110;                   // System Reset
    else if (counter == 24'd1349_9999)      // When reaching 0.5s delay
        led[5:0] <= {led[4:0],led[5]};
    else
        led <= led;                         // Before reaching 0.5s delay
end

endmodule
