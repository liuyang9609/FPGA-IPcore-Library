`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/25 21:02:02
// Design Name: 
// Module Name: OV5640_Sensor_tb
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


module OV5640_Sensor_tb(
    );

    reg clk_i_r;
    reg cmos_pclk_i_r;
    reg [7:0] cmos_data_i_r;
    reg cmos_vsync_i_r;
    reg cmos_href_i_r;


    //output
    wire cmos_xclk_o;
    wire hs_o;
    wire vs_o;
    wire [23:0] rgb_o;
    wire vid_clk_ce;


    OV5640_Sensor uut(
    .clk_i(clk_i_r),

	.cmos_vsync_i(cmos_vsync_i_r),
	.cmos_href_i(cmos_href_i_r),
	.cmos_pclk_i(cmos_pclk_i_r),
    .cmos_data_i(cmos_data_i_r),


	.cmos_xclk_o(cmos_xclk_o),
	.hs_o(hs_o),
    .vs_o(vs_o),
    .rgb_o(rgb_o),
    .vid_clk_ce(vid_clk_ce)
    );

    always
    begin
        #5 
        clk_i_r =~ clk_i_r;
        cmos_pclk_i_r =~ cmos_pclk_i_r;
    end

    initial 
    begin
        

    end

endmodule
