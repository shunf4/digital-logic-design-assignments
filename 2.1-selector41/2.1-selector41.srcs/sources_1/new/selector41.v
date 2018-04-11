`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/11 09:08:00
// Design Name: 
// Module Name: selector41
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


module selector41(
    input [3:0] iC0,
    input [3:0] iC1,
    input [3:0] iC2,
    input [3:0] iC3,
    input iS1,
    input iS0,
    output reg [3:0] oZ
    );
    always @(iS1 or iS0) begin
        case ({iS1, iS0})
            0:
                oZ = iC0;
            1:
                oZ = iC1;
            2:
                oZ = iC2;
            3:
                oZ = iC3;
            default:
                oZ = 'bx;
        endcase
    end
endmodule
