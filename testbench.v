`timescale 1ns/1ps

module or_gate_tb;

reg A, B;
wire Y;

// Instantiate the OR gate
or_gate uut (
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    // Generate VCD file for EPWave
    $dumpfile("dump.vcd");
    $dumpvars(0, or_gate_tb);

    // Apply test cases
    A = 0; B = 0;
    #10;

    A = 0; B = 1;
    #10;

    A = 1; B = 0;
    #10;

    A = 1; B = 1;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t A=%b B=%b Y=%b", $time, A, B, Y);
end

endmodule