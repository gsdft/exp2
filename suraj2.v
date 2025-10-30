module boolean_min (
    input A, B, C,
    output F
);
    assign F = (~A & C) | (A & ~B);
endmodule