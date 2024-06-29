module comp(a, b, agb, aeb, alb);
    parameter n = 1; // Parameter defining the size of input vectors
    input [n-1:0] a,b; 
    
    output agb; // Output indicating a greater than b
    output aeb; // Output indicating a equal to b
    output alb; // Output indicating a less than b
    
    // Comparisons between vectors a and b
    assign agb = (a > b); // Assign output agb to 1 if a is greater than b
    assign aeb = (a == b); // Assign output aeb to 1 if a is equal to b
    assign alb = (a < b); // Assign output alb to 1 if a is less than b

endmodule

