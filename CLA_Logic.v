`timescale 1ns / 1ps

module CLA_Logic(
    input [3:0] g, p,
    input c_0,
    output [3:0] c,
    output g_g, p_g
);
    
    wire p_and, gp_block;
    
    assign c[0] = g[0] | p[0] & c_0;
    assign c[1] = g[1] | g[0] & p[1] | c_0 & p[0] & p[1];
    assign c[2] = g[2] | g[1] & p[2] | g[0] & p[1] & p[2] | c_0 & p[0] & p[1] & p[2];
    assign c[3] = g[3] | g[2] & p[3] | g[1] & p[2] & p[3] | g[0] & p[1] & p[2] & p[3] | c_0 & p[0] & p[1] & p[2] & p[3];
    assign p_and = & p[3:0];
    assign gp_block = g[3] | (p[3] & (g[2] | (p[2] & (g[1] | (p[1] & g[0]) ) ) ) );
    assign g_g = gp_block;
    assign p_g = p_and;
    
endmodule
