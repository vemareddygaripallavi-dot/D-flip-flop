module dflipflop(
    input D,        // Data input
    input clk,      // Clock signal
    input reset,    // Asynchronous reset
    output reg Q    // Output
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;             // Reset output to 0
        else
            Q <= D;                // On clock edge, store D
    end
endmodule
