//----for systolic array, we have 32x32 output, 32x32 weight buffer, 32x32
//data buffer

module systolic#(
	parameter ARRAY_SIZE = 256,
	parameter SRAM_DATA_WIDTH = 32,
	parameter DATA_WIDTH = 8
)
(
	input clk,
	input srstn,
	input alu_start,												//enable signal, can start do mul and add plus shift
	input [8:0] cycle_num,
	//input pos_table [0:ARRAY_SIZE-1] [0:ARRAY_SIZE-1],

	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w0,		//32 weight queue
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w1,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w2,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w3,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w4,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w5,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w6,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w7,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w8,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w9,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w10,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w11,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w12,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w13,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w14,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w15,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w16,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w17,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w18,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w19,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w20,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w21,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w22,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w23,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w24,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w25,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w26,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w27,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w28,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w29,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w30,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w31,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w32,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w33,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w34,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w35,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w36,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w37,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w38,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w39,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w40,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w41,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w42,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w43,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w44,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w45,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w46,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w47,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w48,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w49,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w50,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w51,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w52,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w53,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w54,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w55,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w56,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w57,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w58,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w59,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w60,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w61,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w62,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_w63,

	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d0,		//32 data queue
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d1,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d2,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d3,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d4,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d5,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d6,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d7,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d8,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d9,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d10,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d11,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d12,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d13,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d14,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d15,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d16,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d17,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d18,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d19,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d20,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d21,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d22,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d23,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d24,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d25,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d26,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d27,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d28,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d29,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d30,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d31,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d32,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d33,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d34,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d35,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d36,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d37,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d38,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d39,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d40,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d41,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d42,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d43,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d44,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d45,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d46,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d47,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d48,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d49,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d50,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d51,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d52,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d53,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d54,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d55,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d56,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d57,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d58,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d59,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d60,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d61,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d62,
	input [SRAM_DATA_WIDTH-1:0] sram_rdata_d63,

	input [5:0] matrix_index,
	output reg signed [(ARRAY_SIZE*(DATA_WIDTH+DATA_WIDTH+5))-1:0] mul_outcome
);

localparam FIRST_OUT = 33;
localparam PARALLEL_START = 65;
localparam OUTCOME_WIDTH = DATA_WIDTH+DATA_WIDTH+5;

reg signed [OUTCOME_WIDTH-1:0] matrix_mul_2D [0:ARRAY_SIZE-1] [0:ARRAY_SIZE-1]; 		//32*32 ALU 
reg signed [OUTCOME_WIDTH-1:0] matrix_mul_2D_nx [0:ARRAY_SIZE-1] [0:ARRAY_SIZE-1]; 		
reg signed [DATA_WIDTH-1:0] data_queue [0:ARRAY_SIZE-1] [0:ARRAY_SIZE-1];
reg signed [DATA_WIDTH-1:0] weight_queue [0:ARRAY_SIZE-1] [0:ARRAY_SIZE-1];

reg signed [DATA_WIDTH+DATA_WIDTH-1:0] mul_result;

reg [5:0] upper_bound;
reg [5:0] lower_bound;

integer i,j;


//------data, weight------
always@(posedge clk) begin
	if(~srstn) begin
		for(i=0; i<ARRAY_SIZE; i=i+1) begin
			for(j=0; j<ARRAY_SIZE; j=j+1) begin
				weight_queue[i][j] <= 0;
				data_queue[i][j]   <= 0;
			end
		end
	end
	else begin
		if(alu_start) begin
			//weight shifting(a0)
			for(i=0; i<4; i=i+1) begin
				weight_queue[0][i] <= sram_rdata_w0[31-8*i-:8];
				weight_queue[0][i+4] <= sram_rdata_w1[31-8*i-:8];
				weight_queue[0][i+8] <= sram_rdata_w2[31-8*i-:8];
				weight_queue[0][i+12] <= sram_rdata_w3[31-8*i-:8];
				weight_queue[0][i+16] <= sram_rdata_w4[31-8*i-:8];
				weight_queue[0][i+20] <= sram_rdata_w5[31-8*i-:8];
				weight_queue[0][i+24] <= sram_rdata_w6[31-8*i-:8];
				weight_queue[0][i+28] <= sram_rdata_w7[31-8*i-:8];
				weight_queue[0][i+32] <= sram_rdata_w8[31-8*i-:8];
				weight_queue[0][i+36] <= sram_rdata_w9[31-8*i-:8];
				weight_queue[0][i+40] <= sram_rdata_w10[31-8*i-:8];
				weight_queue[0][i+44] <= sram_rdata_w11[31-8*i-:8];
				weight_queue[0][i+48] <= sram_rdata_w12[31-8*i-:8];
				weight_queue[0][i+52] <= sram_rdata_w13[31-8*i-:8];
				weight_queue[0][i+56] <= sram_rdata_w14[31-8*i-:8];
				weight_queue[0][i+60] <= sram_rdata_w15[31-8*i-:8];
				weight_queue[0][i+64] <= sram_rdata_w16[31-8*i-:8];
				weight_queue[0][i+68] <= sram_rdata_w17[31-8*i-:8];
				weight_queue[0][i+72] <= sram_rdata_w18[31-8*i-:8];
				weight_queue[0][i+76] <= sram_rdata_w19[31-8*i-:8];
				weight_queue[0][i+80] <= sram_rdata_w20[31-8*i-:8];
				weight_queue[0][i+84] <= sram_rdata_w21[31-8*i-:8];
				weight_queue[0][i+88] <= sram_rdata_w22[31-8*i-:8];
				weight_queue[0][i+92] <= sram_rdata_w23[31-8*i-:8];
				weight_queue[0][i+96] <= sram_rdata_w24[31-8*i-:8];
				weight_queue[0][i+100] <= sram_rdata_w25[31-8*i-:8];
				weight_queue[0][i+104] <= sram_rdata_w26[31-8*i-:8];
				weight_queue[0][i+108] <= sram_rdata_w27[31-8*i-:8];
				weight_queue[0][i+112] <= sram_rdata_w28[31-8*i-:8];
				weight_queue[0][i+116] <= sram_rdata_w29[31-8*i-:8];
				weight_queue[0][i+120] <= sram_rdata_w30[31-8*i-:8];
				weight_queue[0][i+124] <= sram_rdata_w31[31-8*i-:8];
				weight_queue[0][i+128] <= sram_rdata_w32[31-8*i-:8];
				weight_queue[0][i+132] <= sram_rdata_w33[31-8*i-:8];
				weight_queue[0][i+136] <= sram_rdata_w34[31-8*i-:8];
				weight_queue[0][i+140] <= sram_rdata_w35[31-8*i-:8];
				weight_queue[0][i+144] <= sram_rdata_w36[31-8*i-:8];
				weight_queue[0][i+148] <= sram_rdata_w37[31-8*i-:8];
				weight_queue[0][i+152] <= sram_rdata_w38[31-8*i-:8];
				weight_queue[0][i+156] <= sram_rdata_w39[31-8*i-:8];
				weight_queue[0][i+160] <= sram_rdata_w40[31-8*i-:8];
				weight_queue[0][i+164] <= sram_rdata_w41[31-8*i-:8];
				weight_queue[0][i+168] <= sram_rdata_w42[31-8*i-:8];
				weight_queue[0][i+172] <= sram_rdata_w43[31-8*i-:8];
				weight_queue[0][i+176] <= sram_rdata_w44[31-8*i-:8];
				weight_queue[0][i+180] <= sram_rdata_w45[31-8*i-:8];
				weight_queue[0][i+184] <= sram_rdata_w46[31-8*i-:8];
				weight_queue[0][i+188] <= sram_rdata_w47[31-8*i-:8];
				weight_queue[0][i+192] <= sram_rdata_w48[31-8*i-:8];
				weight_queue[0][i+196] <= sram_rdata_w49[31-8*i-:8];
				weight_queue[0][i+200] <= sram_rdata_w50[31-8*i-:8];
				weight_queue[0][i+204] <= sram_rdata_w51[31-8*i-:8];
				weight_queue[0][i+208] <= sram_rdata_w52[31-8*i-:8];
				weight_queue[0][i+212] <= sram_rdata_w53[31-8*i-:8];
				weight_queue[0][i+216] <= sram_rdata_w54[31-8*i-:8];
				weight_queue[0][i+220] <= sram_rdata_w55[31-8*i-:8];
				weight_queue[0][i+224] <= sram_rdata_w56[31-8*i-:8];
				weight_queue[0][i+228] <= sram_rdata_w57[31-8*i-:8];
				weight_queue[0][i+232] <= sram_rdata_w58[31-8*i-:8];
				weight_queue[0][i+236] <= sram_rdata_w59[31-8*i-:8];
				weight_queue[0][i+240] <= sram_rdata_w60[31-8*i-:8];
				weight_queue[0][i+244] <= sram_rdata_w61[31-8*i-:8];
				weight_queue[0][i+248] <= sram_rdata_w62[31-8*i-:8];
				weight_queue[0][i+252] <= sram_rdata_w63[31-8*i-:8];
			end
			
			for(i=1; i<ARRAY_SIZE; i=i+1) 
				for(j=0; j<ARRAY_SIZE; j=j+1) 
					weight_queue[i][j] <= weight_queue[i-1][j];
				
			//data shifting(b0)
			for(i=0; i<4; i=i+1) begin
				data_queue[i][0] <= sram_rdata_d0[31-8*i-:8];
				data_queue[i+4][0] <= sram_rdata_d1[31-8*i-:8];
				data_queue[i+8][0] <= sram_rdata_d2[31-8*i-:8];
				data_queue[i+12][0] <= sram_rdata_d3[31-8*i-:8];
				data_queue[i+16][0] <= sram_rdata_d4[31-8*i-:8];
				data_queue[i+20][0] <= sram_rdata_d5[31-8*i-:8];
				data_queue[i+24][0] <= sram_rdata_d6[31-8*i-:8];
				data_queue[i+28][0] <= sram_rdata_d7[31-8*i-:8];
				data_queue[i+32][0] <= sram_rdata_d8[31-8*i-:8];
				data_queue[i+36][0] <= sram_rdata_d9[31-8*i-:8];
				data_queue[i+40][0] <= sram_rdata_d10[31-8*i-:8];
				data_queue[i+44][0] <= sram_rdata_d11[31-8*i-:8];
				data_queue[i+48][0] <= sram_rdata_d12[31-8*i-:8];
				data_queue[i+52][0] <= sram_rdata_d13[31-8*i-:8];
				data_queue[i+56][0] <= sram_rdata_d14[31-8*i-:8];
				data_queue[i+60][0] <= sram_rdata_d15[31-8*i-:8];
				data_queue[i+64][0] <= sram_rdata_d16[31-8*i-:8];
				data_queue[i+68][0] <= sram_rdata_d17[31-8*i-:8];
				data_queue[i+72][0] <= sram_rdata_d18[31-8*i-:8];
				data_queue[i+76][0] <= sram_rdata_d19[31-8*i-:8];
				data_queue[i+80][0] <= sram_rdata_d20[31-8*i-:8];
				data_queue[i+84][0] <= sram_rdata_d21[31-8*i-:8];
				data_queue[i+88][0] <= sram_rdata_d22[31-8*i-:8];
				data_queue[i+92][0] <= sram_rdata_d23[31-8*i-:8];
				data_queue[i+96][0] <= sram_rdata_d24[31-8*i-:8];
				data_queue[i+100][0] <= sram_rdata_d25[31-8*i-:8];
				data_queue[i+104][0] <= sram_rdata_d26[31-8*i-:8];
				data_queue[i+108][0] <= sram_rdata_d27[31-8*i-:8];
				data_queue[i+112][0] <= sram_rdata_d28[31-8*i-:8];
				data_queue[i+116][0] <= sram_rdata_d29[31-8*i-:8];
				data_queue[i+120][0] <= sram_rdata_d30[31-8*i-:8];
				data_queue[i+124][0] <= sram_rdata_d31[31-8*i-:8];
				data_queue[i+128][0] <= sram_rdata_d32[31-8*i-:8];
				data_queue[i+132][0] <= sram_rdata_d33[31-8*i-:8];
				data_queue[i+136][0] <= sram_rdata_d34[31-8*i-:8];
				data_queue[i+140][0] <= sram_rdata_d35[31-8*i-:8];
				data_queue[i+144][0] <= sram_rdata_d36[31-8*i-:8];
				data_queue[i+148][0] <= sram_rdata_d37[31-8*i-:8];
				data_queue[i+152][0] <= sram_rdata_d38[31-8*i-:8];
				data_queue[i+156][0] <= sram_rdata_d39[31-8*i-:8];
				data_queue[i+160][0] <= sram_rdata_d40[31-8*i-:8];
				data_queue[i+164][0] <= sram_rdata_d41[31-8*i-:8];
				data_queue[i+168][0] <= sram_rdata_d42[31-8*i-:8];
				data_queue[i+172][0] <= sram_rdata_d43[31-8*i-:8];
				data_queue[i+176][0] <= sram_rdata_d44[31-8*i-:8];
				data_queue[i+180][0] <= sram_rdata_d45[31-8*i-:8];
				data_queue[i+184][0] <= sram_rdata_d46[31-8*i-:8];
				data_queue[i+188][0] <= sram_rdata_d47[31-8*i-:8];
				data_queue[i+192][0] <= sram_rdata_d48[31-8*i-:8];
				data_queue[i+196][0] <= sram_rdata_d49[31-8*i-:8];
				data_queue[i+200][0] <= sram_rdata_d50[31-8*i-:8];
				data_queue[i+204][0] <= sram_rdata_d51[31-8*i-:8];
				data_queue[i+208][0] <= sram_rdata_d52[31-8*i-:8];
				data_queue[i+212][0] <= sram_rdata_d53[31-8*i-:8];
				data_queue[i+216][0] <= sram_rdata_d54[31-8*i-:8];
				data_queue[i+220][0] <= sram_rdata_d55[31-8*i-:8];
				data_queue[i+224][0] <= sram_rdata_d56[31-8*i-:8];
				data_queue[i+228][0] <= sram_rdata_d57[31-8*i-:8];
				data_queue[i+232][0] <= sram_rdata_d58[31-8*i-:8];
				data_queue[i+236][0] <= sram_rdata_d59[31-8*i-:8];
				data_queue[i+240][0] <= sram_rdata_d60[31-8*i-:8];
				data_queue[i+244][0] <= sram_rdata_d61[31-8*i-:8];
				data_queue[i+248][0] <= sram_rdata_d62[31-8*i-:8];
				data_queue[i+252][0] <= sram_rdata_w63[31-8*i-:8];
			end
			
			for(i=0; i<ARRAY_SIZE; i=i+1) 
				for(j=1; j<ARRAY_SIZE; j=j+1) 
					data_queue[i][j] <= data_queue[i][j-1];
		end
	end
end

//-------multiplication unit------------
always@(posedge clk) begin
	if(~srstn) begin
		for(i=0; i<ARRAY_SIZE; i=i+1) 
			for(j=0; j<ARRAY_SIZE; j=j+1)  
				matrix_mul_2D[i][j] <= 0;
	end
	else begin
		for(i=0; i<ARRAY_SIZE; i=i+1) 
			for(j=0; j<ARRAY_SIZE; j=j+1) 
				matrix_mul_2D[i][j] <= matrix_mul_2D_nx[i][j];
	end
end

always@(*) begin
	if(alu_start) begin			//based on the mul_row_num, decode how many row operations need to do
		for(i=0; i<ARRAY_SIZE; i=i+1) begin
			for(j=0; j<ARRAY_SIZE; j=j+1) begin
				//multiplication and adding
				if( (cycle_num>=FIRST_OUT && (i+j)==(cycle_num-FIRST_OUT)%64) || (cycle_num >=PARALLEL_START && (i+j)==(cycle_num-PARALLEL_START)%64) ) begin
					mul_result = weight_queue[i][j] * data_queue[i][j];
					matrix_mul_2D_nx[i][j] =  { {5{mul_result[15]}} , mul_result };
				end
				else if( cycle_num>=1 && i+j<=(cycle_num-1) ) begin
					mul_result = weight_queue[i][j] * data_queue[i][j];
					matrix_mul_2D_nx[i][j] = matrix_mul_2D[i][j] + { {5{mul_result[15]}} , mul_result };
				end
				else begin
				 	mul_result = 0;	
					matrix_mul_2D_nx[i][j] = matrix_mul_2D[i][j];
				end
			end
		end
	end
	else begin
		mul_result = 0;
		for(i=0; i<ARRAY_SIZE; i=i+1) 
			for(j=0; j<ARRAY_SIZE; j=j+1) 
				matrix_mul_2D_nx[i][j] = matrix_mul_2D[i][j];
	end		
end

//------output data: mul_outcome(indexed by matrix_index)------
always@(*) begin	
	if(matrix_index < ARRAY_SIZE) begin
		upper_bound = matrix_index;
		lower_bound = matrix_index + ARRAY_SIZE;
	end
	else begin
		upper_bound = matrix_index - ARRAY_SIZE;
		lower_bound = matrix_index;
	end


	//initialization
	for(i=0; i<ARRAY_SIZE*OUTCOME_WIDTH; i=i+1)
		mul_outcome[i] = 0;

	//fetch data
	for(i=0; i<ARRAY_SIZE; i=i+1) begin
		for(j=0; j<ARRAY_SIZE-i; j=j+1) begin
			if(i+j == upper_bound)
				mul_outcome[i*OUTCOME_WIDTH+:OUTCOME_WIDTH] = matrix_mul_2D[i][j];
		end
	end

	for(i=1; i<ARRAY_SIZE; i=i+1) begin
		for(j=ARRAY_SIZE-i; j<ARRAY_SIZE; j=j+1) begin
			if(i+j == lower_bound)
				mul_outcome[i*OUTCOME_WIDTH+:OUTCOME_WIDTH] = matrix_mul_2D[i][j];
		end
	end

end

endmodule

