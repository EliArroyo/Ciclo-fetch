
module PC_v2 (
    input  wire [31:0] in,
    input  wire        clk,
    input  wire        reset,
    output reg  [31:0] out
);

always @(posedge clk) begin
    if (rst)
        out <= 32'd0;
    else
        out <= in;
end

endmodule
