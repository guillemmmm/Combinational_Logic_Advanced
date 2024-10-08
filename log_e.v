
//module mult_10_6 #(parameter SIZE=8)(Clk, Rst_n, CPre, Pulse);

//`define REG_IO
module log_e (DatIn_A, DatOut);
//module log_e (Clk, Rst_n, DatIn_A, DatOut);

	//input Clk, Rst_n;
	input [16-1:0] DatIn_A;
	output [16-1:0] DatOut;



	wire [16-1:0] numA;
	wire [16-1:0] res;

	`ifdef REG_IO
		reg [16-1:0] regA;
		reg [16-1:0] regRes;

		assign DatOut = regRes;
		assign numA = regA;

		always @(posedge Clk or negedge Rst_n) begin
			if(~Rst_n) begin
				regA <= 16'd0;
				regRes <= 16'd0;
			end else begin
				regA <= DatIn_A;
				regRes <= res;
			end
		end
	`else
		assign DatOut = res;
		assign numA = DatIn_A;
	`endif

	assign res =
//start python

				 (numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[10] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[10] & numA[9] & numA[6] & numA[3] & numA[0]) |
				 (numA[10] & numA[9] & numA[8]) |
				 (numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[11] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[11] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[11] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[11] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[11] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[11] & numA[9] & numA[2] & numA[0]) |
				 (numA[11] & numA[9] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[11] & numA[9] & numA[7] & numA[4] & numA[2]) |
				 (numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[11] & numA[9] & numA[8] & numA[4] & numA[0]) |
				 (numA[11] & numA[9] & numA[8] & numA[6] & numA[3] & numA[1]) |
				 (numA[11] & numA[9] & numA[8] & numA[7]) |
				 (numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[11] & numA[10] & numA[4] & numA[1] & numA[0]) |
				 (numA[11] & numA[10] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[11] & numA[10] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[11] & numA[10] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[11] & numA[10] & numA[7] & numA[6] & numA[5]) |
				 (numA[11] & numA[10] & numA[8] & numA[2]) |
				 (numA[11] & numA[10] & numA[8] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[0]) |
				 (numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[1]) |
				 (numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[11] & numA[10] & numA[9]) |
				 (numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[11] & numA[10] & numA[9] & numA[6] & numA[4]) |
				 (numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[11] & numA[10] & numA[9] & numA[7] & numA[1]) |
				 (numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3]) |
				 (numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[1]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[1]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[8] & numA[2] & numA[0]) |
				 (numA[12] & numA[8] & numA[4] & numA[0]) |
				 (numA[12] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[8] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[8] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[8] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[8] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[9] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[4] & numA[0]) |
				 (numA[12] & numA[9] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[5] & numA[2]) |
				 (numA[12] & numA[9] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[9] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[6] & numA[0]) |
				 (numA[12] & numA[9] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[9] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[9] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[7]) |
				 (numA[12] & numA[9] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[9] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[9] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[9] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[9] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[9] & numA[8] & numA[2]) |
				 (numA[12] & numA[9] & numA[8] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[9] & numA[8] & numA[5] & numA[1]) |
				 (numA[12] & numA[9] & numA[8] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[9] & numA[8] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[5]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[6]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[2]) |
				 (numA[12] & numA[10] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[4]) |
				 (numA[12] & numA[10] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[5] & numA[0]) |
				 (numA[12] & numA[10] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[10] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[10] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[10] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[2]) |
				 (numA[12] & numA[10] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[10] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[10] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[2]) |
				 (numA[12] & numA[10] & numA[8] & numA[3]) |
				 (numA[12] & numA[10] & numA[8] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[4] & numA[1]) |
				 (numA[12] & numA[10] & numA[8] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[8] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[5] & numA[2]) |
				 (numA[12] & numA[10] & numA[8] & numA[5] & numA[3]) |
				 (numA[12] & numA[10] & numA[8] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[1]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[5]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[4] & numA[3]) |
				 (numA[12] & numA[10] & numA[9] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[5] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[5] & numA[4]) |
				 (numA[12] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[3]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[3]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11]) |
				 (numA[12] & numA[11] & numA[1]) |
				 (numA[12] & numA[11] & numA[2]) |
				 (numA[12] & numA[11] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[5]) |
				 (numA[12] & numA[11] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8]) |
				 (numA[12] & numA[11] & numA[8] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10]) |
				 (numA[12] & numA[11] & numA[10] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7]) |
				 (numA[12] & numA[11] & numA[10] & numA[7]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8]) |
				 (numA[12] & numA[11] & numA[10] & numA[8]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9]) |
				 (numA[12] & numA[11] & numA[10] & numA[9]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[12] & numA[11] & numA[10] & numA[9] & numA[8] & numA[7] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13]) |
				 (numA[13]) |
				 (numA[13]) |
				 (numA[13] & numA[0]) |
				 (numA[13] & numA[0]) |
				 (numA[13] & numA[0]) |
				 (numA[13] & numA[0]) |
				 (numA[13] & numA[1]) |
				 (numA[13] & numA[1]) |
				 (numA[13] & numA[1]) |
				 (numA[13] & numA[1] & numA[0]) |
				 (numA[13] & numA[1] & numA[0]) |
				 (numA[13] & numA[1] & numA[0]) |
				 (numA[13] & numA[1] & numA[0]) |
				 (numA[13] & numA[2]) |
				 (numA[13] & numA[2]) |
				 (numA[13] & numA[2]) |
				 (numA[13] & numA[2]) |
				 (numA[13] & numA[2] & numA[0]) |
				 (numA[13] & numA[2] & numA[0]) |
				 (numA[13] & numA[2] & numA[0]) |
				 (numA[13] & numA[2] & numA[1]) |
				 (numA[13] & numA[2] & numA[1]) |
				 (numA[13] & numA[2] & numA[1]) |
				 (numA[13] & numA[2] & numA[1]) |
				 (numA[13] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[3]) |
				 (numA[13] & numA[3]) |
				 (numA[13] & numA[3]) |
				 (numA[13] & numA[3] & numA[0]) |
				 (numA[13] & numA[3] & numA[0]) |
				 (numA[13] & numA[3] & numA[0]) |
				 (numA[13] & numA[3] & numA[0]) |
				 (numA[13] & numA[3] & numA[1]) |
				 (numA[13] & numA[3] & numA[1]) |
				 (numA[13] & numA[3] & numA[1]) |
				 (numA[13] & numA[3] & numA[1]) |
				 (numA[13] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[3] & numA[2]) |
				 (numA[13] & numA[3] & numA[2]) |
				 (numA[13] & numA[3] & numA[2]) |
				 (numA[13] & numA[3] & numA[2]) |
				 (numA[13] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[4]) |
				 (numA[13] & numA[4]) |
				 (numA[13] & numA[4]) |
				 (numA[13] & numA[4]) |
				 (numA[13] & numA[4] & numA[0]) |
				 (numA[13] & numA[4] & numA[0]) |
				 (numA[13] & numA[4] & numA[0]) |
				 (numA[13] & numA[4] & numA[1]) |
				 (numA[13] & numA[4] & numA[1]) |
				 (numA[13] & numA[4] & numA[1]) |
				 (numA[13] & numA[4] & numA[1]) |
				 (numA[13] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[2]) |
				 (numA[13] & numA[4] & numA[2]) |
				 (numA[13] & numA[4] & numA[2]) |
				 (numA[13] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[3]) |
				 (numA[13] & numA[4] & numA[3]) |
				 (numA[13] & numA[4] & numA[3]) |
				 (numA[13] & numA[4] & numA[3]) |
				 (numA[13] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5]) |
				 (numA[13] & numA[5]) |
				 (numA[13] & numA[5]) |
				 (numA[13] & numA[5]) |
				 (numA[13] & numA[5] & numA[0]) |
				 (numA[13] & numA[5] & numA[0]) |
				 (numA[13] & numA[5] & numA[0]) |
				 (numA[13] & numA[5] & numA[1]) |
				 (numA[13] & numA[5] & numA[1]) |
				 (numA[13] & numA[5] & numA[1]) |
				 (numA[13] & numA[5] & numA[1]) |
				 (numA[13] & numA[5] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[2]) |
				 (numA[13] & numA[5] & numA[2]) |
				 (numA[13] & numA[5] & numA[2]) |
				 (numA[13] & numA[5] & numA[2]) |
				 (numA[13] & numA[5] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[3]) |
				 (numA[13] & numA[5] & numA[3]) |
				 (numA[13] & numA[5] & numA[3]) |
				 (numA[13] & numA[5] & numA[3]) |
				 (numA[13] & numA[5] & numA[3] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[1]) |
				 (numA[13] & numA[5] & numA[3] & numA[1]) |
				 (numA[13] & numA[5] & numA[3] & numA[1]) |
				 (numA[13] & numA[5] & numA[3] & numA[1]) |
				 (numA[13] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[2]) |
				 (numA[13] & numA[5] & numA[3] & numA[2]) |
				 (numA[13] & numA[5] & numA[3] & numA[2]) |
				 (numA[13] & numA[5] & numA[3] & numA[2]) |
				 (numA[13] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4]) |
				 (numA[13] & numA[5] & numA[4]) |
				 (numA[13] & numA[5] & numA[4]) |
				 (numA[13] & numA[5] & numA[4]) |
				 (numA[13] & numA[5] & numA[4] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[2]) |
				 (numA[13] & numA[5] & numA[4] & numA[2]) |
				 (numA[13] & numA[5] & numA[4] & numA[2]) |
				 (numA[13] & numA[5] & numA[4] & numA[2]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3]) |
				 (numA[13] & numA[5] & numA[4] & numA[3]) |
				 (numA[13] & numA[5] & numA[4] & numA[3]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6]) |
				 (numA[13] & numA[6]) |
				 (numA[13] & numA[6]) |
				 (numA[13] & numA[6]) |
				 (numA[13] & numA[6] & numA[0]) |
				 (numA[13] & numA[6] & numA[0]) |
				 (numA[13] & numA[6] & numA[0]) |
				 (numA[13] & numA[6] & numA[0]) |
				 (numA[13] & numA[6] & numA[1]) |
				 (numA[13] & numA[6] & numA[1]) |
				 (numA[13] & numA[6] & numA[1]) |
				 (numA[13] & numA[6] & numA[1]) |
				 (numA[13] & numA[6] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[2]) |
				 (numA[13] & numA[6] & numA[2]) |
				 (numA[13] & numA[6] & numA[2]) |
				 (numA[13] & numA[6] & numA[2]) |
				 (numA[13] & numA[6] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[3]) |
				 (numA[13] & numA[6] & numA[3]) |
				 (numA[13] & numA[6] & numA[3]) |
				 (numA[13] & numA[6] & numA[3]) |
				 (numA[13] & numA[6] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4]) |
				 (numA[13] & numA[6] & numA[4]) |
				 (numA[13] & numA[6] & numA[4]) |
				 (numA[13] & numA[6] & numA[4]) |
				 (numA[13] & numA[6] & numA[4] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[2]) |
				 (numA[13] & numA[6] & numA[4] & numA[2]) |
				 (numA[13] & numA[6] & numA[4] & numA[2]) |
				 (numA[13] & numA[6] & numA[4] & numA[2]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3]) |
				 (numA[13] & numA[6] & numA[4] & numA[3]) |
				 (numA[13] & numA[6] & numA[4] & numA[3]) |
				 (numA[13] & numA[6] & numA[4] & numA[3]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[4] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5]) |
				 (numA[13] & numA[6] & numA[5]) |
				 (numA[13] & numA[6] & numA[5]) |
				 (numA[13] & numA[6] & numA[5]) |
				 (numA[13] & numA[6] & numA[5] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3]) |
				 (numA[13] & numA[6] & numA[5] & numA[3]) |
				 (numA[13] & numA[6] & numA[5] & numA[3]) |
				 (numA[13] & numA[6] & numA[5] & numA[3]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[3] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4]) |
				 (numA[13] & numA[6] & numA[5] & numA[4]) |
				 (numA[13] & numA[6] & numA[5] & numA[4]) |
				 (numA[13] & numA[6] & numA[5] & numA[4]) |
				 (numA[13] & numA[6] & numA[5] & numA[4]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[2] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[1] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[0]) |
				 (numA[13] & numA[6] & numA[5] & numA[4] & numA[3] & numA[2] & numA[1]);
				
				 

/*
	always @(*) begin
        case (numA)
            16'h0000: res = 0;

            default: res = 0;  // Si no coincide, devuelve 0
        endcase
    end
    */


endmodule
//{SIZE-1{1'b0},1'b1} 