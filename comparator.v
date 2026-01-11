`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2026 17:48:59
// Design Name: 
// Module Name: comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator(
    input [3:0] a, b,
    output gt
    );
    
    wire [1:0] e, g;
    wire [2:0] c;
        
    assign gt = c[0] | c[1] | c[2];
    assign c[0] = ~g[1] & e[1] & g[0];
    assign c[1] = g[1] & ~e[1] & ~g[0];
    assign c[2] = g[1] & ~e[1] & g[0];
        
    equal_2bit eq0(.a(a[1:0]), .b(b[1:0]), .eq(e[0]));
    equal_2bit eq1(.a(a[3:2]), .b(b[3:2]), .eq(e[1]));
    
    greater gt0(.a(a[1:0]), .b(b[1:0]), .gt(g[0]));
    greater gt1(.a(a[3:2]), .b(b[3:2]), .gt(g[1]));
    
    
    
endmodule
