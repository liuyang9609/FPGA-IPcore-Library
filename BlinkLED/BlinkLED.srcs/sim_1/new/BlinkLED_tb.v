`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/22 23:00:09
// Design Name: 
// Module Name: BlinkLED_tb
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


module BlinkLED_tb;

    reg clk_i;
    reg rst_n;
    wire blinkled_o;

    BlinkLED uut
    (
        .clk_i(clk_i),
        .rst_n(rst_n),
        .blinkled_o(blinkled_o)
    );

    initial 
    begin
        clk_i = 0;
        rst_n = 0;

        #100;
        rst_n = 1;
    end

    always
    begin 
        #5  clk_i = ~clk_i;
    end 

endmodule
