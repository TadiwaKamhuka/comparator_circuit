`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2026 17:00:23
// Design Name: 
// Module Name: prac_tb
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


module prac_tb;
    reg [3:0] a, b;
    wire gt;
    
    comparator uut(.a(a), .b(b), .gt(gt));
    
    initial begin
        a = 4'b0001;
        b = 4'b0000;
        #10
        a = 4'b0011;
        b = 4'b0001;
        #10
        a = 4'b0111;
        b = 4'b0010;
        #10
        a = 4'b1111;
        b = 4'b0011;
        #10
        a = 4'b0001;
        b = 4'b0100;
        #10
        a = 4'b0011;
        b = 4'b0101;
        #10
        a = 4'b0111;
        b = 4'b1001;
        #10
        a = 4'b1111;
        b = 4'b1010;
        #10
        a = 4'b0001;
        b = 4'b1011;
        #10
        a = 4'b0011;
        b = 4'b1001;
        #10
        a = 4'b0111;
        b = 4'b1010;
        #10
        a = 4'b1111;
        b = 4'b1011;
        #10
        $stop;
    end
endmodule
