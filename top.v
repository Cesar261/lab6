// Implement top level module
    module top(
    input [7:0] sw,
    output [5:0] led
    );
    
    light light_inst (
    .downstairs(sw[0]),
    .upstairs(sw[1]),
    .stair_light(led[0])
);
    adder adder_inst(
    .A(sw[2]),
    .B(sw[3]),
    .carry(led[2]),
    .Y(led[1])
    );
    
    wire c1; // Carry signal between LSB and MSB adders

// LSB Adder (Bit 0)
    full_adder fa0 (
    .A(sw[4]),
    .B(sw[6]),
    .Cin(1'b0),     // No carry-in for the first bit
    .Y(led[3]),     // Sum bit 0
    .Cout(c1)       // Carry to bit 1
);

// MSB Adder (Bit 1)
    full_adder fa1 (
    .A(sw[5]),
    .B(sw[7]),
    .Cin(c1),       // Carry-in from bit 0
    .Y(led[4]),     // Sum bit 1
    .Cout(led[5])   // Final carry-out
);

endmodule