`timescale 1ns/1ns

module cicloFETCH(
	input clk,
	input rst,
	output [31:0] salida
);

wire [31:0] r1;		
wire [31:0] r2;		

ALU      instALU(.A(r2), .R(r1));
PC 		 instPC(.entrada(r1), .clk(clk), .rst(rst), .salida(r2));
memOut  instMem(.Dir(r2), .DatoLect(salida));

endmodule

module cicloFETCH_TB();

reg clk;
reg rst;
wire [31:0] salida;

cicloFETCH insttb(.clk(clk), .rst(rst), .salida(salida));

always #25 clk=~clk;
initial
	begin
		clk=0;
		rst=1;
		#50;
		rst=0;
		$readmemb("datos.txt", insttb.instancia_memoria.memr_out);
		#250;
		$stop;
	end
endmodule