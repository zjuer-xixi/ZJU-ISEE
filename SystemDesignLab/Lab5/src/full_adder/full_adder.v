// Verilog module for a full adder
module full_adder(
    input a, b, ci,          // Inputs a, b, and carry-in (ci)
    output reg s, co         // Outputs sum (s) and carry-out (co)
);
    // Combinational logic to calculate sum (s) and carry-out (co)
    always @* begin
        {co, s} = a + b + ci;
    end
endmodule
