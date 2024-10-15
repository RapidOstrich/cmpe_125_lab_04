`timescale 1ns / 1ps

module CLA_4(
    input [4:0] a, b,
    input cin,
    output [3:0] sum,
    output cout, g_g, p_g
);

    wire [3:0] g_block, p_block, carry;

    Full_Adder instance_0(a[0], b[0], cin,      g_block[0], p_block[0], sum[0]);
    Full_Adder instance_1(a[1], b[1], carry[0], g_block[1], p_block[1], sum[1]);
    Full_Adder instance_2(a[2], b[2], carry[1], g_block[2], p_block[2], sum[2]);
    Full_Adder instance_3(a[3], b[3], carry[2], g_block[3], p_block[3], sum[3]);
    
    CLA_Logic instance_4(g_block, p_block, cin, carry, g_g, p_g);

    assign cout = carry[3];

endmodule
