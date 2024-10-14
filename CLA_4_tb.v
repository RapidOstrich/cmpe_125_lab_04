`timescale 1ns / 1ps

module CLA_4_tb();

    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout, g_g, p_g;

    CLA_4 instance_0(a, b, cin, sum, cout, g_g, p_g);
    
    initial begin
        for (cin = 1'b0; cin < 1'b1; cin = cin + 1)
            for (b = 4'b0000; b < 4'b1111; b = b + 1)
                for (a = 4'b0000; a < 4'b1111; a = a + 1)
                    #1;
    end

endmodule
