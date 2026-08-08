`timescale 1ns/1ps

module demux1to4_tb;

reg din;
reg s0, s1;
wire y0, y1, y2, y3;

demux1to4 uut (
    .din(din),
    .s0(s0),
    .s1(s1),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin

    $monitor("Time=%0t | din=%b | s1s0=%b%b | y0=%b y1=%b y2=%b y3=%b",
             $time, din, s1, s0, y0, y1, y2, y3);

    // Input data
    din = 1'b1;

    // Select output y0
    s1 = 1'b0; s0 = 1'b0;
    #10;

    // Select output y1
    s1 = 1'b0; s0 = 1'b1;
    #10;

    // Select output y2
    s1 = 1'b1; s0 = 1'b0;
    #10;

    // Select output y3
    s1 = 1'b1; s0 = 1'b1;
    #10;

    // Test with input 0
    din = 1'b0;
    #10;

    $finish;
end

endmodule
