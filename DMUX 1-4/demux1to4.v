// 1:4 Demultiplexer
// Routes one input to one of four outputs based on select lines

module demux1to4 (
    input  wire din,
    input  wire s0,
    input  wire s1,
    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3
);

always @(*) begin
    // Default outputs
    y0 = 1'b0;
    y1 = 1'b0;
    y2 = 1'b0;
    y3 = 1'b0;

    case ({s1, s0})
        2'b00: y0 = din;
        2'b01: y1 = din;
        2'b10: y2 = din;
        2'b11: y3 = din;
        default: begin
            y0 = 1'b0;
            y1 = 1'b0;
            y2 = 1'b0;
            y3 = 1'b0;
        end
    endcase
end

endmodule
