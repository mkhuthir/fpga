// AND gate example

module and_gate (
    input   I0, I1,
    output  LED
);

    assign LED = ~I0 & ~I1;       // Continuous assignment: NOT and AND operators
    
endmodule
