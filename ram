module memoria_inst (
    input  wire [31:0] addr,
    output reg  [31:0] data_out
);

reg [7:0] memoria[0:999];

always @(*) begin
    data_out = {memoria[addr], memoria[addr+1], memoria[addr+2], memoria[addr+3]};
end

endmodule
