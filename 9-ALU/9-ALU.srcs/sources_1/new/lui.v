`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/04 08:45:32
// Design Name: 
// Module Name: lui
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


module lui(
    input [31:0] b,
    output [31:0] r,
    output zero,
    output negative
    );
    assign r = {b[15:0], 16'b0};
    assign zero = (r==0);
    assign negative = (r[31]==1);
endmodule
