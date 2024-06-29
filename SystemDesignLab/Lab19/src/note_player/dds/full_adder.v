// Verilog module for a full adder
module full_adder(a, b, ci, s, co);
    parameter n = 22;
    input [n-1:0] a, b, ci;          // Inputs a, b, and carry-in (ci)
    output reg [n-1:0] s, co;         // Outputs sum (s) and carry-out (co)

    // Combinational logic to calculate sum (s) and carry-out (co)
    always @* begin
        {co, s} = a + b + ci;
    end
endmodule
