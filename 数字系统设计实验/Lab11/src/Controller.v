module control(clk, r, in, out, timer_clr, timer_done); 
    input clk, in, r, timer_done; 
    output reg timer_clr, out; 
    parameter LOW = 0, WAIT_HIGH = 1, HIGH = 2, WAIT_LOW = 3; // State definitions
    reg [1:0] state, nextstate; // State and Next State registers. These hold the Current and the Next states of the FSM

    always @(posedge clk) 
        if(r) state = LOW; 
        else state = nextstate; 
    
    always @(*) 
    begin
        out = 0; timer_clr = 1; 
        case(state) // Depending on the current state, the logic decides the next state and the output signals
            LOW: begin if(in) nextstate = WAIT_HIGH; else state = LOW; end // When the output is LOW, waiting for the input to go HIGH to switch state
            WAIT_HIGH: begin timer_clr = 0; out = 1; if(timer_done) nextstate = HIGH; else nextstate = WAIT_HIGH; end // Waiting for timer to finish when HIGH input is received 
            HIGH: begin out = 1; if(in) nextstate = HIGH; else nextstate = WAIT_LOW; end // When output is HIGH, waiting for the input to go LOW to switch state
            WAIT_LOW: begin timer_clr = 0; out = 1; if(timer_done) nextstate = LOW; else nextstate = WAIT_LOW; end // Waiting for timer to finish when LOW input is received 
            default: nextstate = LOW;
        endcase
    end
endmodule