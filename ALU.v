module ALU(
    input wire [31:0] A,
    output reg [31:0] R
);
always@(*) 
	begin
		R=A+4;
	end
endmodule