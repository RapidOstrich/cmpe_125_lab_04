`timescale 1ns / 1ps

module Full_Adder(
    input a, b, cin,
    output reg g, p, sum
);
    
    always @(*) begin
        p = a ^ b;
        g = a & b;
        sum = p ^ cin;
    end

endmodule
