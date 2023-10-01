// Muthanna Alwahash
// Sept 2023


module and_gate 
    (
    input   pmod_0,
    input   pmod_1,
    output  led_0
    );

    assign led_0 = ~pmod_0 & ~pmod_1;

endmodule