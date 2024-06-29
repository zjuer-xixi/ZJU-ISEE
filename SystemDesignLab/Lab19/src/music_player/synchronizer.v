module synchronizer(in, clk, out);
    input in, clk;
    output out;

    wire q1, q2;
    assign out = q1 && ~q2;

    dffr #(.n(1))dffr1(.r(0), .en(1), .clk(clk), .d(in), .q(q1));
    dffr #(.n(1))dffr2(.r(0), .en(1), .clk(clk), .d(q1), .q(q2));
endmodule