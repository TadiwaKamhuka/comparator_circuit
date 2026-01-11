`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2026 17:56:23
// Design Name: 
// Module Name: greater
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


module greater(
    input [1:0] a, b,
    output gt
    );
    
    assign gt = a[0] & ~b[0] & ~b[1] | a[1] & a[0] & ~b[0] | a[1] & ~b[1];
endmodule
