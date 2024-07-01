// Define a 2-to-1 multiplexer module
module mux_2to1(out, in0, in1, addr);
    parameter n = 1;
    output [n-1:0] out;
    input [n-1:0] in0, in1;
    input addr;

    reg [n-1:0] out;
    // Always block triggered on any change of inputs or address
    always @* begin
        case(addr)
            1'b0: out = in0;   // If addr is 0, output will be in0
            1'b1: out = in1;   // If addr is 1, output will be in1
            default: out = 1'bx;   // For any other case (which should not occur), output is undefined
        endcase
    end
endmodule
