//-------do the address select for 32 queue, each queue size 32+32-1---


module addr_sel
(
	input clk,
	input [8:0] addr_serial_num,							//max = 126, setting all of the addr127 = 0
	
	//sel for w0~w7
	output reg [9:0] sram_raddr_w0,			//queue 0~3
	output reg [9:0] sram_raddr_w1,			//queue 4~7
	output reg [9:0] sram_raddr_w2,			//queue 8~11
	output reg [9:0] sram_raddr_w3,			//queue 12~15
	output reg [9:0] sram_raddr_w4,			//queue 16~19
	output reg [9:0] sram_raddr_w5,			//queue 20~23
	output reg [9:0] sram_raddr_w6,			//queue 24~27
	output reg [9:0] sram_raddr_w7,			//queue 28~31
	output reg [9:0] sram_raddr_w8,			//queue 32~35
	output reg [9:0] sram_raddr_w9,			//queue 36~39
	output reg [9:0] sram_raddr_w10,		//queue 40~43
	output reg [9:0] sram_raddr_w11,		//queue 44~47
	output reg [9:0] sram_raddr_w12,		//queue 48~51
	output reg [9:0] sram_raddr_w13,		//queue 52~55
	output reg [9:0] sram_raddr_w14,		//queue 56~59
	output reg [9:0] sram_raddr_w15,		//queue 60~63
	output reg [9:0] sram_raddr_w16,		//queue 64~67
	output reg [9:0] sram_raddr_w17,		//queue 68~71
	output reg [9:0] sram_raddr_w18,		//queue 72~75
	output reg [9:0] sram_raddr_w19,		//queue 76~79
	output reg [9:0] sram_raddr_w20,		//queue 80~83
	output reg [9:0] sram_raddr_w21,		//queue 84~87
	output reg [9:0] sram_raddr_w22,		//queue 88~91
	output reg [9:0] sram_raddr_w23,		//queue 92~95
	output reg [9:0] sram_raddr_w24,		//queue 96~99
	output reg [9:0] sram_raddr_w25,		//queue 100~103
	output reg [9:0] sram_raddr_w26,		//queue 104~107
	output reg [9:0] sram_raddr_w27,		//queue 108~111
	output reg [9:0] sram_raddr_w28,		//queue 112~115
	output reg [9:0] sram_raddr_w29,		//queue 116~119
	output reg [9:0] sram_raddr_w30,		//queue 120~123
	output reg [9:0] sram_raddr_w31,		//queue 124~127
	output reg [9:0] sram_raddr_w32,		//queue 128~131
	output reg [9:0] sram_raddr_w33,		//queue 132~135
	output reg [9:0] sram_raddr_w34,		//queue 136~139
	output reg [9:0] sram_raddr_w35,		//queue 140~143
	output reg [9:0] sram_raddr_w36,		//queue 144~147
	output reg [9:0] sram_raddr_w37,		//queue 148~151
	output reg [9:0] sram_raddr_w38,		//queue 152~155
	output reg [9:0] sram_raddr_w39,		//queue 156~159
	output reg [9:0] sram_raddr_w40,		//queue 160~163
	output reg [9:0] sram_raddr_w41,		//queue 164~167
	output reg [9:0] sram_raddr_w42,		//queue 168~171
	output reg [9:0] sram_raddr_w43,		//queue 172~175
	output reg [9:0] sram_raddr_w44,		//queue 176~179
	output reg [9:0] sram_raddr_w45,		//queue 180~183
	output reg [9:0] sram_raddr_w46,		//queue 184~187
	output reg [9:0] sram_raddr_w47,		//queue 188~191
	output reg [9:0] sram_raddr_w48,		//queue 192~195
	output reg [9:0] sram_raddr_w49,		//queue 196~199
	output reg [9:0] sram_raddr_w50,		//queue 200~203
	output reg [9:0] sram_raddr_w51,		//queue 204~207
	output reg [9:0] sram_raddr_w52,		//queue 208~211
	output reg [9:0] sram_raddr_w53,		//queue 212~215
	output reg [9:0] sram_raddr_w54,		//queue 216~219
	output reg [9:0] sram_raddr_w55,		//queue 220~223
	output reg [9:0] sram_raddr_w56,		//queue 224~227
	output reg [9:0] sram_raddr_w57,		//queue 228~231
	output reg [9:0] sram_raddr_w58,		//queue 232~235
	output reg [9:0] sram_raddr_w59,		//queue 236~239
	output reg [9:0] sram_raddr_w60,		//queue 240~243
	output reg [9:0] sram_raddr_w61,		//queue 244~247
	output reg [9:0] sram_raddr_w62,		//queue 248~251
	output reg [9:0] sram_raddr_w63,		//queue 252~255


	//sel for d0~d7
	output reg [9:0] sram_raddr_d0,
	output reg [9:0] sram_raddr_d1,
	output reg [9:0] sram_raddr_d2,
	output reg [9:0] sram_raddr_d3,
	output reg [9:0] sram_raddr_d4,
	output reg [9:0] sram_raddr_d5,
	output reg [9:0] sram_raddr_d6,
	output reg [9:0] sram_raddr_d7,
	output reg [9:0] sram_raddr_d8,
	output reg [9:0] sram_raddr_d9,
	output reg [9:0] sram_raddr_d10,
	output reg [9:0] sram_raddr_d11,
	output reg [9:0] sram_raddr_d12,
	output reg [9:0] sram_raddr_d13,
	output reg [9:0] sram_raddr_d14,
	output reg [9:0] sram_raddr_d15,
	output reg [9:0] sram_raddr_d16,
	output reg [9:0] sram_raddr_d17,
	output reg [9:0] sram_raddr_d18,
	output reg [9:0] sram_raddr_d19,
	output reg [9:0] sram_raddr_d20,
	output reg [9:0] sram_raddr_d21,
	output reg [9:0] sram_raddr_d22,
	output reg [9:0] sram_raddr_d23,
	output reg [9:0] sram_raddr_d24,
	output reg [9:0] sram_raddr_d25,
	output reg [9:0] sram_raddr_d26,
	output reg [9:0] sram_raddr_d27,
	output reg [9:0] sram_raddr_d28,
	output reg [9:0] sram_raddr_d29,
	output reg [9:0] sram_raddr_d30,
	output reg [9:0] sram_raddr_d31,
	output reg [9:0] sram_raddr_d32,
	output reg [9:0] sram_raddr_d33,
	output reg [9:0] sram_raddr_d34,
	output reg [9:0] sram_raddr_d35,
	output reg [9:0] sram_raddr_d36,
	output reg [9:0] sram_raddr_d37,
	output reg [9:0] sram_raddr_d38,
	output reg [9:0] sram_raddr_d39,
	output reg [9:0] sram_raddr_d40,
	output reg [9:0] sram_raddr_d41,
	output reg [9:0] sram_raddr_d42,
	output reg [9:0] sram_raddr_d43,
	output reg [9:0] sram_raddr_d44,
	output reg [9:0] sram_raddr_d45,
	output reg [9:0] sram_raddr_d46,
	output reg [9:0] sram_raddr_d47,
	output reg [9:0] sram_raddr_d48,
	output reg [9:0] sram_raddr_d49,
	output reg [9:0] sram_raddr_d50,
	output reg [9:0] sram_raddr_d51,
	output reg [9:0] sram_raddr_d52,
	output reg [9:0] sram_raddr_d53,
	output reg [9:0] sram_raddr_d54,
	output reg [9:0] sram_raddr_d55,
	output reg [9:0] sram_raddr_d56,
	output reg [9:0] sram_raddr_d57,
	output reg [9:0] sram_raddr_d58,
	output reg [9:0] sram_raddr_d59,
	output reg [9:0] sram_raddr_d60,
	output reg [9:0] sram_raddr_d61,
	output reg [9:0] sram_raddr_d62,
	output reg [9:0] sram_raddr_d63
);
/*
assign sram_raddr_d0 = (addr_serial_num<=98)? { {3{1'd0}} , addr_serial_num} : 127;
assign sram_raddr_d1 = (addr_serial_num>=4 && addr_serial_num<=102)? { {3{1'd0}} , addr_serial_num-7'd4} : 127;
assign sram_raddr_d2 = (addr_serial_num>=8 && addr_serial_num<=106)? { {3{1'd0}} , addr_serial_num-7'd8} : 127;
assign sram_raddr_d3 = (addr_serial_num>=12 && addr_serial_num<=110)? { {3{1'd0}} , addr_serial_num-7'd12} : 127;
assign sram_raddr_d4 = (addr_serial_num>=16 && addr_serial_num<=114)? { {3{1'd0}} , addr_serial_num-7'd16} : 127;
assign sram_raddr_d5 = (addr_serial_num>=20 && addr_serial_num<=118)? { {3{1'd0}} , addr_serial_num-7'd20} : 127;
assign sram_raddr_d6 = (addr_serial_num>=24 && addr_serial_num<=122)? { {3{1'd0}} , addr_serial_num-7'd24} : 127;
assign sram_raddr_d7 = (addr_serial_num>=28 && addr_serial_num<=126)? { {3{1'd0}} , addr_serial_num-7'd28} : 127;

assign sram_raddr_w0 = (addr_serial_num<=98)? { {3{1'd0}} , addr_serial_num} : 127;
assign sram_raddr_w1 = (addr_serial_num>=4 && addr_serial_num<=102)? { {3{1'd0}} , addr_serial_num-7'd4} : 127;
assign sram_raddr_w2 = (addr_serial_num>=8 && addr_serial_num<=106)? { {3{1'd0}} , addr_serial_num-7'd8} : 127;
assign sram_raddr_w3 = (addr_serial_num>=12 && addr_serial_num<=110)? { {3{1'd0}} , addr_serial_num-7'd12} : 127;
assign sram_raddr_w4 = (addr_serial_num>=16 && addr_serial_num<=114)? { {3{1'd0}} , addr_serial_num-7'd16} : 127;
assign sram_raddr_w5 = (addr_serial_num>=20 && addr_serial_num<=118)? { {3{1'd0}} , addr_serial_num-7'd20} : 127;
assign sram_raddr_w6 = (addr_serial_num>=24 && addr_serial_num<=122)? { {3{1'd0}} , addr_serial_num-7'd24} : 127;
assign sram_raddr_w7 = (addr_serial_num>=28 && addr_serial_num<=126)? { {3{1'd0}} , addr_serial_num-7'd28} : 127;
*/

wire [9:0] sram_raddr_w0_nx;			//queue 0~3
wire [9:0] sram_raddr_w1_nx;			//queue 4~7
wire [9:0] sram_raddr_w2_nx;			//queue 8~11
wire [9:0] sram_raddr_w3_nx;			//queue 12~15
wire [9:0] sram_raddr_w4_nx;			//queue 16~19
wire [9:0] sram_raddr_w5_nx;			//queue 20~23
wire [9:0] sram_raddr_w6_nx;			//queue 24~27
wire [9:0] sram_raddr_w7_nx;			//queue 28~31
wire [9:0] sram_raddr_w8_nx;			//queue 32~35
wire [9:0] sram_raddr_w9_nx;			//queue 36~39
wire [9:0] sram_raddr_w10_nx;			//queue 40~43
wire [9:0] sram_raddr_w11_nx;			//queue 44~47
wire [9:0] sram_raddr_w12_nx;			//queue 48~51
wire [9:0] sram_raddr_w13_nx;			//queue 52~55
wire [9:0] sram_raddr_w14_nx;			//queue 56~59
wire [9:0] sram_raddr_w15_nx;			//queue 60~63
wire [9:0] sram_raddr_w16_nx;			//queue 64~67
wire [9:0] sram_raddr_w17_nx;			//queue 68~71
wire [9:0] sram_raddr_w18_nx;			//queue 72~75
wire [9:0] sram_raddr_w19_nx;			//queue 76~79
wire [9:0] sram_raddr_w20_nx;			//queue 80~83
wire [9:0] sram_raddr_w21_nx;			//queue 84~87
wire [9:0] sram_raddr_w22_nx;			//queue 88~91
wire [9:0] sram_raddr_w23_nx;			//queue 92~95
wire [9:0] sram_raddr_w24_nx;			//queue 96~99
wire [9:0] sram_raddr_w25_nx;			//queue 100~103
wire [9:0] sram_raddr_w26_nx;			//queue 104~107
wire [9:0] sram_raddr_w27_nx;			//queue 108~111
wire [9:0] sram_raddr_w28_nx;			//queue 112~115
wire [9:0] sram_raddr_w29_nx;			//queue 116~119
wire [9:0] sram_raddr_w30_nx;			//queue 120~123
wire [9:0] sram_raddr_w31_nx;			//queue 124~127
wire [9:0] sram_raddr_w32_nx;			//queue 128~131
wire [9:0] sram_raddr_w33_nx;			//queue 132~135
wire [9:0] sram_raddr_w34_nx;			//queue 136~139
wire [9:0] sram_raddr_w35_nx;			//queue 140~143
wire [9:0] sram_raddr_w36_nx;			//queue 144~147
wire [9:0] sram_raddr_w37_nx;			//queue 148~151
wire [9:0] sram_raddr_w38_nx;			//queue 152~155
wire [9:0] sram_raddr_w39_nx;			//queue 156~159
wire [9:0] sram_raddr_w40_nx;			//queue 160~163
wire [9:0] sram_raddr_w41_nx;			//queue 164~167
wire [9:0] sram_raddr_w42_nx;			//queue 168~171
wire [9:0] sram_raddr_w43_nx;			//queue 172~175
wire [9:0] sram_raddr_w44_nx;			//queue 176~179
wire [9:0] sram_raddr_w45_nx;			//queue 180~183
wire [9:0] sram_raddr_w46_nx;			//queue 184~187
wire [9:0] sram_raddr_w47_nx;			//queue 188~191
wire [9:0] sram_raddr_w48_nx;			//queue 192~195
wire [9:0] sram_raddr_w49_nx;			//queue 196~199
wire [9:0] sram_raddr_w50_nx;			//queue 200~203
wire [9:0] sram_raddr_w51_nx;			//queue 204~207
wire [9:0] sram_raddr_w52_nx;			//queue 208~211
wire [9:0] sram_raddr_w53_nx;			//queue 212~215
wire [9:0] sram_raddr_w54_nx;			//queue 216~219
wire [9:0] sram_raddr_w55_nx;			//queue 220~223
wire [9:0] sram_raddr_w56_nx;			//queue 224~227
wire [9:0] sram_raddr_w57_nx;			//queue 228~231
wire [9:0] sram_raddr_w58_nx;			//queue 232~235
wire [9:0] sram_raddr_w59_nx;			//queue 236~239
wire [9:0] sram_raddr_w60_nx;			//queue 240~243
wire [9:0] sram_raddr_w61_nx;			//queue 244~247
wire [9:0] sram_raddr_w62_nx;			//queue 248~251
wire [9:0] sram_raddr_w63_nx;			//queue 252~255

//sel for d0~d7
wire [9:0] sram_raddr_d0_nx;
wire [9:0] sram_raddr_d1_nx;
wire [9:0] sram_raddr_d2_nx;
wire [9:0] sram_raddr_d3_nx;
wire [9:0] sram_raddr_d4_nx;
wire [9:0] sram_raddr_d5_nx;
wire [9:0] sram_raddr_d6_nx;
wire [9:0] sram_raddr_d7_nx;
wire [9:0] sram_raddr_d8_nx;
wire [9:0] sram_raddr_d9_nx;
wire [9:0] sram_raddr_d10_nx;
wire [9:0] sram_raddr_d11_nx;
wire [9:0] sram_raddr_d12_nx;
wire [9:0] sram_raddr_d13_nx;
wire [9:0] sram_raddr_d14_nx;
wire [9:0] sram_raddr_d15_nx;
wire [9:0] sram_raddr_d16_nx;
wire [9:0] sram_raddr_d17_nx;
wire [9:0] sram_raddr_d18_nx;
wire [9:0] sram_raddr_d19_nx;
wire [9:0] sram_raddr_d20_nx;
wire [9:0] sram_raddr_d21_nx;
wire [9:0] sram_raddr_d22_nx;
wire [9:0] sram_raddr_d23_nx;
wire [9:0] sram_raddr_d24_nx;
wire [9:0] sram_raddr_d25_nx;
wire [9:0] sram_raddr_d26_nx;
wire [9:0] sram_raddr_d27_nx;
wire [9:0] sram_raddr_d28_nx;
wire [9:0] sram_raddr_d29_nx;
wire [9:0] sram_raddr_d30_nx;
wire [9:0] sram_raddr_d31_nx;
wire [9:0] sram_raddr_d32_nx;
wire [9:0] sram_raddr_d33_nx;
wire [9:0] sram_raddr_d34_nx;
wire [9:0] sram_raddr_d35_nx;
wire [9:0] sram_raddr_d36_nx;
wire [9:0] sram_raddr_d37_nx;
wire [9:0] sram_raddr_d38_nx;
wire [9:0] sram_raddr_d39_nx;
wire [9:0] sram_raddr_d40_nx;
wire [9:0] sram_raddr_d41_nx;
wire [9:0] sram_raddr_d42_nx;
wire [9:0] sram_raddr_d43_nx;
wire [9:0] sram_raddr_d44_nx;
wire [9:0] sram_raddr_d45_nx;
wire [9:0] sram_raddr_d46_nx;
wire [9:0] sram_raddr_d47_nx;
wire [9:0] sram_raddr_d48_nx;
wire [9:0] sram_raddr_d49_nx;
wire [9:0] sram_raddr_d50_nx;
wire [9:0] sram_raddr_d51_nx;
wire [9:0] sram_raddr_d52_nx;
wire [9:0] sram_raddr_d53_nx;
wire [9:0] sram_raddr_d54_nx;
wire [9:0] sram_raddr_d55_nx;
wire [9:0] sram_raddr_d56_nx;
wire [9:0] sram_raddr_d57_nx;
wire [9:0] sram_raddr_d58_nx;
wire [9:0] sram_raddr_d59_nx;
wire [9:0] sram_raddr_d60_nx;
wire [9:0] sram_raddr_d61_nx;
wire [9:0] sram_raddr_d62_nx;
wire [9:0] sram_raddr_d63_nx;

always@(posedge clk) begin				//fit in output flip-flop
	sram_raddr_w0 <= sram_raddr_w0_nx;
	sram_raddr_w1 <= sram_raddr_w1_nx;
	sram_raddr_w2 <= sram_raddr_w2_nx;
	sram_raddr_w3 <= sram_raddr_w3_nx;
	sram_raddr_w4 <= sram_raddr_w4_nx;
	sram_raddr_w5 <= sram_raddr_w5_nx;
	sram_raddr_w6 <= sram_raddr_w6_nx;
	sram_raddr_w7 <= sram_raddr_w7_nx;
	sram_raddr_w8 <= sram_raddr_w8_nx;
	sram_raddr_w9 <= sram_raddr_w9_nx;
	sram_raddr_w10 <= sram_raddr_w10_nx;
	sram_raddr_w11 <= sram_raddr_w11_nx;
	sram_raddr_w12 <= sram_raddr_w12_nx;
	sram_raddr_w13 <= sram_raddr_w13_nx;
	sram_raddr_w14 <= sram_raddr_w14_nx;
	sram_raddr_w15 <= sram_raddr_w15_nx;
	sram_raddr_w16 <= sram_raddr_w16_nx;
	sram_raddr_w17 <= sram_raddr_w17_nx;
	sram_raddr_w18 <= sram_raddr_w18_nx;
	sram_raddr_w19 <= sram_raddr_w19_nx;
	sram_raddr_w20 <= sram_raddr_w20_nx;
	sram_raddr_w21 <= sram_raddr_w21_nx;
	sram_raddr_w22 <= sram_raddr_w22_nx;
	sram_raddr_w23 <= sram_raddr_w23_nx;
	sram_raddr_w24 <= sram_raddr_w24_nx;
	sram_raddr_w25 <= sram_raddr_w25_nx;
	sram_raddr_w26 <= sram_raddr_w26_nx;
	sram_raddr_w27 <= sram_raddr_w27_nx;
	sram_raddr_w28 <= sram_raddr_w28_nx;
	sram_raddr_w29 <= sram_raddr_w29_nx;
	sram_raddr_w30 <= sram_raddr_w30_nx;
	sram_raddr_w31 <= sram_raddr_w31_nx;
	sram_raddr_w32 <= sram_raddr_w32_nx;
	sram_raddr_w33 <= sram_raddr_w33_nx;
	sram_raddr_w34 <= sram_raddr_w34_nx;
	sram_raddr_w35 <= sram_raddr_w35_nx;
	sram_raddr_w36 <= sram_raddr_w36_nx;
	sram_raddr_w37 <= sram_raddr_w37_nx;
	sram_raddr_w38 <= sram_raddr_w38_nx;
	sram_raddr_w39 <= sram_raddr_w39_nx;
	sram_raddr_w40 <= sram_raddr_w40_nx;
	sram_raddr_w41 <= sram_raddr_w41_nx;
	sram_raddr_w42 <= sram_raddr_w42_nx;
	sram_raddr_w43 <= sram_raddr_w43_nx;
	sram_raddr_w44 <= sram_raddr_w44_nx;
	sram_raddr_w45 <= sram_raddr_w45_nx;
	sram_raddr_w46 <= sram_raddr_w46_nx;
	sram_raddr_w47 <= sram_raddr_w47_nx;
	sram_raddr_w48 <= sram_raddr_w48_nx;
	sram_raddr_w49 <= sram_raddr_w49_nx;
	sram_raddr_w50 <= sram_raddr_w50_nx;
	sram_raddr_w51 <= sram_raddr_w51_nx;
	sram_raddr_w52 <= sram_raddr_w52_nx;
	sram_raddr_w53 <= sram_raddr_w53_nx;
	sram_raddr_w54 <= sram_raddr_w54_nx;
	sram_raddr_w55 <= sram_raddr_w55_nx;
	sram_raddr_w56 <= sram_raddr_w56_nx;
	sram_raddr_w57 <= sram_raddr_w57_nx;
	sram_raddr_w58 <= sram_raddr_w58_nx;
	sram_raddr_w59 <= sram_raddr_w59_nx;
	sram_raddr_w60 <= sram_raddr_w60_nx;
	sram_raddr_w61 <= sram_raddr_w61_nx;
	sram_raddr_w62 <= sram_raddr_w62_nx;
	sram_raddr_w63 <= sram_raddr_w63_nx;

	sram_raddr_d0 <= sram_raddr_d0_nx;
	sram_raddr_d1 <= sram_raddr_d1_nx;
	sram_raddr_d2 <= sram_raddr_d2_nx;
	sram_raddr_d3 <= sram_raddr_d3_nx;
	sram_raddr_d4 <= sram_raddr_d4_nx;
	sram_raddr_d5 <= sram_raddr_d5_nx;
	sram_raddr_d6 <= sram_raddr_d6_nx;
	sram_raddr_d7 <= sram_raddr_d7_nx;
	sram_raddr_d8 <= sram_raddr_d8_nx;
	sram_raddr_d9 <= sram_raddr_d9_nx;
	sram_raddr_d10 <= sram_raddr_d10_nx;
	sram_raddr_d11 <= sram_raddr_d11_nx;
	sram_raddr_d12 <= sram_raddr_d12_nx;
	sram_raddr_d13 <= sram_raddr_d13_nx;
	sram_raddr_d14 <= sram_raddr_d14_nx;
	sram_raddr_d15 <= sram_raddr_d15_nx;
	sram_raddr_d16 <= sram_raddr_d16_nx;
	sram_raddr_d17 <= sram_raddr_d17_nx;
	sram_raddr_d18 <= sram_raddr_d18_nx;
	sram_raddr_d19 <= sram_raddr_d19_nx;
	sram_raddr_d20 <= sram_raddr_d20_nx;
	sram_raddr_d21 <= sram_raddr_d21_nx;
	sram_raddr_d22 <= sram_raddr_d22_nx;
	sram_raddr_d23 <= sram_raddr_d23_nx;
	sram_raddr_d24 <= sram_raddr_d24_nx;
	sram_raddr_d25 <= sram_raddr_d25_nx;
	sram_raddr_d26 <= sram_raddr_d26_nx;
	sram_raddr_d27 <= sram_raddr_d27_nx;
	sram_raddr_d28 <= sram_raddr_d28_nx;
	sram_raddr_d29 <= sram_raddr_d29_nx;
	sram_raddr_d30 <= sram_raddr_d30_nx;
	sram_raddr_d31 <= sram_raddr_d31_nx;
	sram_raddr_d32 <= sram_raddr_d32_nx;
	sram_raddr_d33 <= sram_raddr_d33_nx;
	sram_raddr_d34 <= sram_raddr_d34_nx;
	sram_raddr_d35 <= sram_raddr_d35_nx;
	sram_raddr_d36 <= sram_raddr_d36_nx;
	sram_raddr_d37 <= sram_raddr_d37_nx;
	sram_raddr_d38 <= sram_raddr_d38_nx;
	sram_raddr_d39 <= sram_raddr_d39_nx;
	sram_raddr_d40 <= sram_raddr_d40_nx;
	sram_raddr_d41 <= sram_raddr_d41_nx;
	sram_raddr_d42 <= sram_raddr_d42_nx;
	sram_raddr_d43 <= sram_raddr_d43_nx;
	sram_raddr_d44 <= sram_raddr_d44_nx;
	sram_raddr_d45 <= sram_raddr_d45_nx;
	sram_raddr_d46 <= sram_raddr_d46_nx;
	sram_raddr_d47 <= sram_raddr_d47_nx;
	sram_raddr_d48 <= sram_raddr_d48_nx;
	sram_raddr_d49 <= sram_raddr_d49_nx;
	sram_raddr_d50 <= sram_raddr_d50_nx;
	sram_raddr_d51 <= sram_raddr_d51_nx;
	sram_raddr_d52 <= sram_raddr_d52_nx;
	sram_raddr_d53 <= sram_raddr_d53_nx;
	sram_raddr_d54 <= sram_raddr_d54_nx;
	sram_raddr_d55 <= sram_raddr_d55_nx;
	sram_raddr_d56 <= sram_raddr_d56_nx;
	sram_raddr_d57 <= sram_raddr_d57_nx;
	sram_raddr_d58 <= sram_raddr_d58_nx;
	sram_raddr_d59 <= sram_raddr_d59_nx;
	sram_raddr_d60 <= sram_raddr_d60_nx;
	sram_raddr_d61 <= sram_raddr_d61_nx;
	sram_raddr_d62 <= sram_raddr_d62_nx;
	sram_raddr_d63 <= sram_raddr_d63_nx;
	
end

assign sram_raddr_w0_nx = (addr_serial_num<=98)? { {3{1'd0}} , addr_serial_num} : 511;
assign sram_raddr_w1_nx = (addr_serial_num>=4 && addr_serial_num<=102)? { {3{1'd0}} , addr_serial_num-9'd4} : 511;
assign sram_raddr_w2_nx = (addr_serial_num>=8 && addr_serial_num<=106)? { {3{1'd0}} , addr_serial_num-9'd8} : 511;
assign sram_raddr_w3_nx = (addr_serial_num>=12 && addr_serial_num<=110)? { {3{1'd0}} , addr_serial_num-9'd12} : 511;
assign sram_raddr_w4_nx = (addr_serial_num>=16 && addr_serial_num<=114)? { {3{1'd0}} , addr_serial_num-9'd16} : 511;
assign sram_raddr_w5_nx = (addr_serial_num>=20 && addr_serial_num<=118)? { {3{1'd0}} , addr_serial_num-9'd20} : 511;
assign sram_raddr_w6_nx = (addr_serial_num>=24 && addr_serial_num<=122)? { {3{1'd0}} , addr_serial_num-9'd24} : 511;
assign sram_raddr_w7_nx = (addr_serial_num>=28 && addr_serial_num<=126)? { {3{1'd0}} , addr_serial_num-9'd28} : 511;
assign sram_raddr_w8_nx = (addr_serial_num>=32 && addr_serial_num<=130)? { {3{1'd0}} , addr_serial_num-9'd32} : 511;
assign sram_raddr_w9_nx = (addr_serial_num>=36 && addr_serial_num<=134)? { {3{1'd0}} , addr_serial_num-9'd36} : 511;
assign sram_raddr_w10_nx = (addr_serial_num>=40 && addr_serial_num<=138)? { {3{1'd0}} , addr_serial_num-9'd40} : 511;
assign sram_raddr_w11_nx = (addr_serial_num>=44 && addr_serial_num<=142)? { {3{1'd0}} , addr_serial_num-9'd44} : 511;
assign sram_raddr_w12_nx = (addr_serial_num>=48 && addr_serial_num<=146)? { {3{1'd0}} , addr_serial_num-9'd48} : 511;
assign sram_raddr_w13_nx = (addr_serial_num>=52 && addr_serial_num<=150)? { {3{1'd0}} , addr_serial_num-9'd52} : 511;
assign sram_raddr_w14_nx = (addr_serial_num>=56 && addr_serial_num<=154)? { {3{1'd0}} , addr_serial_num-9'd56} : 511;
assign sram_raddr_w15_nx = (addr_serial_num>=60 && addr_serial_num<=158)? { {3{1'd0}} , addr_serial_num-9'd60} : 511;
assign sram_raddr_w16_nx = (addr_serial_num>=64 && addr_serial_num<=162)? { {3{1'd0}} , addr_serial_num-9'd64} : 511;
assign sram_raddr_w17_nx = (addr_serial_num>=68 && addr_serial_num<=166)? { {3{1'd0}} , addr_serial_num-9'd68} : 511;
assign sram_raddr_w18_nx = (addr_serial_num>=72 && addr_serial_num<=170)? { {3{1'd0}} , addr_serial_num-9'd72} : 511;
assign sram_raddr_w19_nx = (addr_serial_num>=76 && addr_serial_num<=174)? { {3{1'd0}} , addr_serial_num-9'd76} : 511;
assign sram_raddr_w20_nx = (addr_serial_num>=80 && addr_serial_num<=178)? { {3{1'd0}} , addr_serial_num-9'd80} : 511;
assign sram_raddr_w21_nx = (addr_serial_num>=84 && addr_serial_num<=182)? { {3{1'd0}} , addr_serial_num-9'd84} : 511;
assign sram_raddr_w22_nx = (addr_serial_num>=88 && addr_serial_num<=186)? { {3{1'd0}} , addr_serial_num-9'd88} : 511;
assign sram_raddr_w23_nx = (addr_serial_num>=92 && addr_serial_num<=190)? { {3{1'd0}} , addr_serial_num-9'd92} : 511;
assign sram_raddr_w24_nx = (addr_serial_num>=96 && addr_serial_num<=194)? { {3{1'd0}} , addr_serial_num-9'd96} : 511;
assign sram_raddr_w25_nx = (addr_serial_num>=100 && addr_serial_num<=198)? { {3{1'd0}} , addr_serial_num-9'd100} : 511;
assign sram_raddr_w26_nx = (addr_serial_num>=104 && addr_serial_num<=202)? { {3{1'd0}} , addr_serial_num-9'd104} : 511;
assign sram_raddr_w27_nx = (addr_serial_num>=108 && addr_serial_num<=206)? { {3{1'd0}} , addr_serial_num-9'd108} : 511;
assign sram_raddr_w28_nx = (addr_serial_num>=112 && addr_serial_num<=210)? { {3{1'd0}} , addr_serial_num-9'd112} : 511;
assign sram_raddr_w29_nx = (addr_serial_num>=116 && addr_serial_num<=214)? { {3{1'd0}} , addr_serial_num-9'd116} : 511;
assign sram_raddr_w30_nx = (addr_serial_num>=120 && addr_serial_num<=218)? { {3{1'd0}} , addr_serial_num-9'd120} : 511;
assign sram_raddr_w31_nx = (addr_serial_num>=124 && addr_serial_num<=222)? { {3{1'd0}} , addr_serial_num-9'd124} : 511;
assign sram_raddr_w32_nx = (addr_serial_num>=128 && addr_serial_num<=226)? { {3{1'd0}} , addr_serial_num-9'd128} : 511;
assign sram_raddr_w33_nx = (addr_serial_num>=132 && addr_serial_num<=230)? { {3{1'd0}} , addr_serial_num-9'd132} : 511;
assign sram_raddr_w34_nx = (addr_serial_num>=136 && addr_serial_num<=234)? { {3{1'd0}} , addr_serial_num-9'd136} : 511;
assign sram_raddr_w35_nx = (addr_serial_num>=140 && addr_serial_num<=238)? { {3{1'd0}} , addr_serial_num-9'd140} : 511;
assign sram_raddr_w36_nx = (addr_serial_num>=144 && addr_serial_num<=242)? { {3{1'd0}} , addr_serial_num-9'd144} : 511;
assign sram_raddr_w37_nx = (addr_serial_num>=148 && addr_serial_num<=246)? { {3{1'd0}} , addr_serial_num-9'd148} : 511;
assign sram_raddr_w38_nx = (addr_serial_num>=152 && addr_serial_num<=250)? { {3{1'd0}} , addr_serial_num-9'd152} : 511;
assign sram_raddr_w39_nx = (addr_serial_num>=156 && addr_serial_num<=254)? { {3{1'd0}} , addr_serial_num-9'd156} : 511;
assign sram_raddr_w40_nx = (addr_serial_num>=160 && addr_serial_num<=258)? { {3{1'd0}} , addr_serial_num-9'd160} : 511;
assign sram_raddr_w41_nx = (addr_serial_num>=164 && addr_serial_num<=262)? { {3{1'd0}} , addr_serial_num-9'd164} : 511;
assign sram_raddr_w42_nx = (addr_serial_num>=168 && addr_serial_num<=266)? { {3{1'd0}} , addr_serial_num-9'd168} : 511;
assign sram_raddr_w43_nx = (addr_serial_num>=172 && addr_serial_num<=270)? { {3{1'd0}} , addr_serial_num-9'd172} : 511;
assign sram_raddr_w44_nx = (addr_serial_num>=176 && addr_serial_num<=274)? { {3{1'd0}} , addr_serial_num-9'd176} : 511;
assign sram_raddr_w45_nx = (addr_serial_num>=180 && addr_serial_num<=278)? { {3{1'd0}} , addr_serial_num-9'd180} : 511;
assign sram_raddr_w46_nx = (addr_serial_num>=184 && addr_serial_num<=282)? { {3{1'd0}} , addr_serial_num-9'd184} : 511;
assign sram_raddr_w47_nx = (addr_serial_num>=188 && addr_serial_num<=286)? { {3{1'd0}} , addr_serial_num-9'd188} : 511;
assign sram_raddr_w48_nx = (addr_serial_num>=192 && addr_serial_num<=290)? { {3{1'd0}} , addr_serial_num-9'd192} : 511;
assign sram_raddr_w49_nx = (addr_serial_num>=196 && addr_serial_num<=294)? { {3{1'd0}} , addr_serial_num-9'd196} : 511;
assign sram_raddr_w50_nx = (addr_serial_num>=200 && addr_serial_num<=298)? { {3{1'd0}} , addr_serial_num-9'd200} : 511;
assign sram_raddr_w51_nx = (addr_serial_num>=204 && addr_serial_num<=302)? { {3{1'd0}} , addr_serial_num-9'd204} : 511;
assign sram_raddr_w52_nx = (addr_serial_num>=208 && addr_serial_num<=306)? { {3{1'd0}} , addr_serial_num-9'd208} : 511;
assign sram_raddr_w53_nx = (addr_serial_num>=212 && addr_serial_num<=310)? { {3{1'd0}} , addr_serial_num-9'd212} : 511;
assign sram_raddr_w54_nx = (addr_serial_num>=216 && addr_serial_num<=314)? { {3{1'd0}} , addr_serial_num-9'd216} : 511;
assign sram_raddr_w55_nx = (addr_serial_num>=220 && addr_serial_num<=318)? { {3{1'd0}} , addr_serial_num-9'd220} : 511;
assign sram_raddr_w56_nx = (addr_serial_num>=224 && addr_serial_num<=322)? { {3{1'd0}} , addr_serial_num-9'd224} : 511;
assign sram_raddr_w57_nx = (addr_serial_num>=228 && addr_serial_num<=326)? { {3{1'd0}} , addr_serial_num-9'd228} : 511;
assign sram_raddr_w58_nx = (addr_serial_num>=232 && addr_serial_num<=330)? { {3{1'd0}} , addr_serial_num-9'd232} : 511;
assign sram_raddr_w59_nx = (addr_serial_num>=236 && addr_serial_num<=334)? { {3{1'd0}} , addr_serial_num-9'd236} : 511;
assign sram_raddr_w60_nx = (addr_serial_num>=240 && addr_serial_num<=338)? { {3{1'd0}} , addr_serial_num-9'd240} : 511;
assign sram_raddr_w61_nx = (addr_serial_num>=244 && addr_serial_num<=342)? { {3{1'd0}} , addr_serial_num-9'd244} : 511;
assign sram_raddr_w62_nx = (addr_serial_num>=248 && addr_serial_num<=346)? { {3{1'd0}} , addr_serial_num-9'd248} : 511;
assign sram_raddr_w63_nx = (addr_serial_num>=252 && addr_serial_num<=350)? { {3{1'd0}} , addr_serial_num-9'd252} : 511;

assign sram_raddr_d0_nx = (addr_serial_num<=98)? { {3{1'd0}} , addr_serial_num} : 511;
assign sram_raddr_d1_nx = (addr_serial_num>=4 && addr_serial_num<=102)? { {3{1'd0}} , addr_serial_num-9'd4} : 511;
assign sram_raddr_d2_nx = (addr_serial_num>=8 && addr_serial_num<=106)? { {3{1'd0}} , addr_serial_num-9'd8} : 511;
assign sram_raddr_d3_nx = (addr_serial_num>=12 && addr_serial_num<=110)? { {3{1'd0}} , addr_serial_num-9'd12} : 511;
assign sram_raddr_d4_nx = (addr_serial_num>=16 && addr_serial_num<=114)? { {3{1'd0}} , addr_serial_num-9'd16} : 511;
assign sram_raddr_d5_nx = (addr_serial_num>=20 && addr_serial_num<=118)? { {3{1'd0}} , addr_serial_num-9'd20} : 511;
assign sram_raddr_d6_nx = (addr_serial_num>=24 && addr_serial_num<=122)? { {3{1'd0}} , addr_serial_num-9'd24} : 511;
assign sram_raddr_d7_nx = (addr_serial_num>=28 && addr_serial_num<=126)? { {3{1'd0}} , addr_serial_num-9'd28} : 511;
assign sram_raddr_d8_nx = (addr_serial_num>=32 && addr_serial_num<=130)? { {3{1'd0}} , addr_serial_num-9'd32} : 511;
assign sram_raddr_d9_nx = (addr_serial_num>=36 && addr_serial_num<=134)? { {3{1'd0}} , addr_serial_num-9'd36} : 511;
assign sram_raddr_d10_nx = (addr_serial_num>=40 && addr_serial_num<=138)? { {3{1'd0}} , addr_serial_num-9'd40} : 511;
assign sram_raddr_d11_nx = (addr_serial_num>=44 && addr_serial_num<=142)? { {3{1'd0}} , addr_serial_num-9'd44} : 511;
assign sram_raddr_d12_nx = (addr_serial_num>=48 && addr_serial_num<=146)? { {3{1'd0}} , addr_serial_num-9'd48} : 511;
assign sram_raddr_d13_nx = (addr_serial_num>=52 && addr_serial_num<=150)? { {3{1'd0}} , addr_serial_num-9'd52} : 511;
assign sram_raddr_d14_nx = (addr_serial_num>=56 && addr_serial_num<=154)? { {3{1'd0}} , addr_serial_num-9'd56} : 511;
assign sram_raddr_d15_nx = (addr_serial_num>=60 && addr_serial_num<=158)? { {3{1'd0}} , addr_serial_num-9'd60} : 511;
assign sram_raddr_d16_nx = (addr_serial_num>=64 && addr_serial_num<=162)? { {3{1'd0}} , addr_serial_num-9'd64} : 511;
assign sram_raddr_d17_nx = (addr_serial_num>=68 && addr_serial_num<=166)? { {3{1'd0}} , addr_serial_num-9'd68} : 511;
assign sram_raddr_d18_nx = (addr_serial_num>=72 && addr_serial_num<=170)? { {3{1'd0}} , addr_serial_num-9'd72} : 511;
assign sram_raddr_d19_nx = (addr_serial_num>=76 && addr_serial_num<=174)? { {3{1'd0}} , addr_serial_num-9'd76} : 511;
assign sram_raddr_d20_nx = (addr_serial_num>=80 && addr_serial_num<=178)? { {3{1'd0}} , addr_serial_num-9'd80} : 511;
assign sram_raddr_d21_nx = (addr_serial_num>=84 && addr_serial_num<=182)? { {3{1'd0}} , addr_serial_num-9'd84} : 511;
assign sram_raddr_d22_nx = (addr_serial_num>=88 && addr_serial_num<=186)? { {3{1'd0}} , addr_serial_num-9'd88} : 511;
assign sram_raddr_d23_nx = (addr_serial_num>=92 && addr_serial_num<=190)? { {3{1'd0}} , addr_serial_num-9'd92} : 511;
assign sram_raddr_d24_nx = (addr_serial_num>=96 && addr_serial_num<=194)? { {3{1'd0}} , addr_serial_num-9'd96} : 511;
assign sram_raddr_d25_nx = (addr_serial_num>=100 && addr_serial_num<=198)? { {3{1'd0}} , addr_serial_num-9'd100} : 511;
assign sram_raddr_d26_nx = (addr_serial_num>=104 && addr_serial_num<=202)? { {3{1'd0}} , addr_serial_num-9'd104} : 511;
assign sram_raddr_d27_nx = (addr_serial_num>=108 && addr_serial_num<=206)? { {3{1'd0}} , addr_serial_num-9'd108} : 511;
assign sram_raddr_d28_nx = (addr_serial_num>=112 && addr_serial_num<=210)? { {3{1'd0}} , addr_serial_num-9'd112} : 511;
assign sram_raddr_d29_nx = (addr_serial_num>=116 && addr_serial_num<=214)? { {3{1'd0}} , addr_serial_num-9'd116} : 511;
assign sram_raddr_d30_nx = (addr_serial_num>=120 && addr_serial_num<=218)? { {3{1'd0}} , addr_serial_num-9'd120} : 511;
assign sram_raddr_d31_nx = (addr_serial_num>=124 && addr_serial_num<=222)? { {3{1'd0}} , addr_serial_num-9'd124} : 511;
assign sram_raddr_d32_nx = (addr_serial_num>=128 && addr_serial_num<=226)? { {3{1'd0}} , addr_serial_num-9'd128} : 511;
assign sram_raddr_d33_nx = (addr_serial_num>=132 && addr_serial_num<=230)? { {3{1'd0}} , addr_serial_num-9'd132} : 511;
assign sram_raddr_d34_nx = (addr_serial_num>=136 && addr_serial_num<=234)? { {3{1'd0}} , addr_serial_num-9'd136} : 511;
assign sram_raddr_d35_nx = (addr_serial_num>=140 && addr_serial_num<=238)? { {3{1'd0}} , addr_serial_num-9'd140} : 511;
assign sram_raddr_d36_nx = (addr_serial_num>=144 && addr_serial_num<=242)? { {3{1'd0}} , addr_serial_num-9'd144} : 511;
assign sram_raddr_d37_nx = (addr_serial_num>=148 && addr_serial_num<=246)? { {3{1'd0}} , addr_serial_num-9'd148} : 511;
assign sram_raddr_d38_nx = (addr_serial_num>=152 && addr_serial_num<=250)? { {3{1'd0}} , addr_serial_num-9'd152} : 511;
assign sram_raddr_d39_nx = (addr_serial_num>=156 && addr_serial_num<=254)? { {3{1'd0}} , addr_serial_num-9'd156} : 511;
assign sram_raddr_d40_nx = (addr_serial_num>=160 && addr_serial_num<=258)? { {3{1'd0}} , addr_serial_num-9'd160} : 511;
assign sram_raddr_d41_nx = (addr_serial_num>=164 && addr_serial_num<=262)? { {3{1'd0}} , addr_serial_num-9'd164} : 511;
assign sram_raddr_d42_nx = (addr_serial_num>=168 && addr_serial_num<=266)? { {3{1'd0}} , addr_serial_num-9'd168} : 511;
assign sram_raddr_d43_nx = (addr_serial_num>=172 && addr_serial_num<=270)? { {3{1'd0}} , addr_serial_num-9'd172} : 511;
assign sram_raddr_d44_nx = (addr_serial_num>=176 && addr_serial_num<=274)? { {3{1'd0}} , addr_serial_num-9'd176} : 511;
assign sram_raddr_d45_nx = (addr_serial_num>=180 && addr_serial_num<=278)? { {3{1'd0}} , addr_serial_num-9'd180} : 511;
assign sram_raddr_d46_nx = (addr_serial_num>=184 && addr_serial_num<=282)? { {3{1'd0}} , addr_serial_num-9'd184} : 511;
assign sram_raddr_d47_nx = (addr_serial_num>=188 && addr_serial_num<=286)? { {3{1'd0}} , addr_serial_num-9'd188} : 511;
assign sram_raddr_d48_nx = (addr_serial_num>=192 && addr_serial_num<=290)? { {3{1'd0}} , addr_serial_num-9'd192} : 511;
assign sram_raddr_d49_nx = (addr_serial_num>=196 && addr_serial_num<=294)? { {3{1'd0}} , addr_serial_num-9'd196} : 511;
assign sram_raddr_d50_nx = (addr_serial_num>=200 && addr_serial_num<=298)? { {3{1'd0}} , addr_serial_num-9'd200} : 511;
assign sram_raddr_d51_nx = (addr_serial_num>=204 && addr_serial_num<=302)? { {3{1'd0}} , addr_serial_num-9'd204} : 511;
assign sram_raddr_d52_nx = (addr_serial_num>=208 && addr_serial_num<=306)? { {3{1'd0}} , addr_serial_num-9'd208} : 511;
assign sram_raddr_d53_nx = (addr_serial_num>=212 && addr_serial_num<=310)? { {3{1'd0}} , addr_serial_num-9'd212} : 511;
assign sram_raddr_d54_nx = (addr_serial_num>=216 && addr_serial_num<=314)? { {3{1'd0}} , addr_serial_num-9'd216} : 511;
assign sram_raddr_d55_nx = (addr_serial_num>=220 && addr_serial_num<=318)? { {3{1'd0}} , addr_serial_num-9'd220} : 511;
assign sram_raddr_d56_nx = (addr_serial_num>=224 && addr_serial_num<=322)? { {3{1'd0}} , addr_serial_num-9'd224} : 511;
assign sram_raddr_d57_nx = (addr_serial_num>=228 && addr_serial_num<=326)? { {3{1'd0}} , addr_serial_num-9'd228} : 511;
assign sram_raddr_d58_nx = (addr_serial_num>=232 && addr_serial_num<=330)? { {3{1'd0}} , addr_serial_num-9'd232} : 511;
assign sram_raddr_d59_nx = (addr_serial_num>=236 && addr_serial_num<=334)? { {3{1'd0}} , addr_serial_num-9'd236} : 511;
assign sram_raddr_d60_nx = (addr_serial_num>=240 && addr_serial_num<=338)? { {3{1'd0}} , addr_serial_num-9'd240} : 511;
assign sram_raddr_d61_nx = (addr_serial_num>=244 && addr_serial_num<=342)? { {3{1'd0}} , addr_serial_num-9'd244} : 511;
assign sram_raddr_d62_nx = (addr_serial_num>=248 && addr_serial_num<=346)? { {3{1'd0}} , addr_serial_num-9'd248} : 511;
assign sram_raddr_d63_nx = (addr_serial_num>=252 && addr_serial_num<=350)? { {3{1'd0}} , addr_serial_num-9'd252} : 511;


endmodule