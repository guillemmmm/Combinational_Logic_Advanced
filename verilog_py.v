
//module mult_10_6 #(parameter SIZE=8)(Clk, Rst_n, CPre, Pulse);

`define REG_IO

`ifdef REG_IO
	module log_e (Clk, Rst_n, DatIn_A, DatOut);
`else 
	module log_e (DatIn_A, DatOut);
`endif

	localparam bitIn = 12;
	localparam bitOut = 4;


	//input Clk, Rst_n;
	input [bitIn-1:0] DatIn_A;
	output [bitOut-1:0] DatOut; //com estem fent log2 els bits maxims sera per 2**12-1 = 4095 -> 11 val maxim per tant 4 bits



	wire [bitIn-1:0] numA;
	wire [bitOut-1:0] res;

	`ifdef REG_IO
		reg [bitIn-1:0] regA;
		reg [bitOut-1:0] regRes;

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

				



endmodule
//{SIZE-1{1'b0},1'b1} 