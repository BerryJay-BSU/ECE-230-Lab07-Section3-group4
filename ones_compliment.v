module ones_compliment(
    input [3:0] A, // Four bits of A: 3, 2, 1, 0
    input [3:0] B, // Same for B
    output [3:0] Y // and for Y
);

wire [3:0] w_sum;
wire[3:0] carry;
wire [3:0] carry2;

genvar i;

// Stage 1
generate
    full_adder fa0(
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),
        .Y(w_sum[0]),
        .Cout(carry[0])
    );

    for (i = 1;i<4;i=i+1) begin
        full_adder fa(
            .A(A[i]),
            .B(B[i]),
            .Cin(carry[i-1]),
            .Y(w_sum[i]),
            .Cout(carry[i])
        );
    end
endgenerate

// Stage 2
generate
    full_adder fb0(
        .A(w_sum[0]),
        .B(1'b0),
        .Cin(carry[3]),
        .Y(Y[0]),
        .Cout(carry2[0])
    );

    for(i = 1; i < 4; i = i + 1)begin
        full_adder fb(
            .A(w_sum[i]),
            .B(1'b0),
            .Cin(carry2[i-1]),
            .Y(Y[i]),
            .Cout(carry2[i])
        );
    end
endgenerate


endmodule