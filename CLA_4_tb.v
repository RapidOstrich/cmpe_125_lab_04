`timescale 1ns / 1ps

module CLA_4_tb();

    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout, g_g, g_p;

    CLA_4 instance_0(a, b, cin, sum, cout, g_g, g_p);
    
    initial begin
        for (cin = 1'b0; cin < 1'b1; cin = cin + 1)
            for (b = 1'b0; b < 1'b1; b = b + 1)
                for (a = 1'b0; a < 1'b1; a = a + 1)
                    #1;
    end

endmodule
