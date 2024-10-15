`timescale 1ns / 1ps

module CLA_4_tb();

    reg [4:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout, g_g, p_g;

    CLA_4 instance_0(a, b, cin, sum, cout, g_g, p_g);
    
    initial begin
        for (cin = 2'b00; cin <= 2'b01; cin = cin + 1)
            for (b = 5'b0000; b <= 5'b01111; b = b + 1)
                for (a = 5'b00000; a <= 5'b01111; a = a + 1)
                    #1;
    end

endmodule
