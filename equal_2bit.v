`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2026 20:10:20
// Design Name: 
// Module Name: equal_2bit
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


module equal_2bit(
    input [1:0] a, b,
    output eq
    );
    
    wire [1:0] e;
    
    assign eq = e[0] & e[1];
    equal eq0(.a(a[0]), .b(b[0]), .eq(e[0]));
    equal eq1(.a(a[1]), .b(b[1]), .eq(e[1]));
endmodule
