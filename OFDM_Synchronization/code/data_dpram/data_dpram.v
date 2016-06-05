`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/06/05 20:04:56
// Design Name: 
// Module Name: data_dpram
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


module data_dpram #(
	parameter	DATA_WIDTH		= 16,
				SYN_DATA_WIDTH	= 13 // 同步数据位宽
	)
	(
	axis_aclk,
	axis_arst,
	
	s_axis_ctrl_tvalid	,
	s_axis_ctrl_tlast	,
	s_axis_ctrl_tdata	,
	s_axis_ctrl_trdy	,
	
	s_axis_data_tvalid	,
	s_axis_data_tlast	,
	s_axis_data_tdata	,
	s_axis_data_trdy	,
	
	m_axis_ctrl_tvalid	,
	m_axis_ctrl_tlast	,
	m_axis_ctrl_tdata	,
	m_axis_ctrl_trdy	,
	
	m_axis_data_tvalid	,
	m_axis_data_tlast	,
	m_axis_data_tdata	,
	m_axis_data_trdy
    );
	input	axis_aclk;
	input	axis_arst;
	
	input	s_axis_ctrl_tvalid	;
	input	s_axis_ctrl_tlast	;
	input	s_axis_ctrl_tdata	;
	output	s_axis_ctrl_trdy	;
	
	input	s_axis_data_tvalid	;
	input	s_axis_data_tlast	;
	input	s_axis_data_tdata	;
	output	s_axis_data_trdy	;
	
	output	m_axis_ctrl_tvalid	;
	output	m_axis_ctrl_tlast	;
	output	m_axis_ctrl_tdata	;
	input	m_axis_ctrl_trdy	;
	
	output	m_axis_data_tvalid	;
	output	m_axis_data_tlast	;
	output	m_axis_data_tdata	;
	input	m_axis_data_trdy	;
	
	localparam	RAM_ADDR_WIDTH = 10;
endmodule
