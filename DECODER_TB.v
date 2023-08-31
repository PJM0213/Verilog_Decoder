module decoder_TB;
reg [2:0]A;
reg G1, GN2, GN3;
wire [7:0]Y;

decoder dec(
.A(A),
.G1(G1),
.GN2(GN2),
.GN3(GN3),
.Y(Y)
);
initial begin
G1 = 1; GN2 = 0; GN3 = 0;
#10
A[2] = 0;
A[1] = 0;
A[0] = 0;

#100;
A[2] = 1;
A[1] = 1;
A[0] = 0;

#100;
G1 = 0; GN2 = 0; GN3 = 0;
end
endmodule