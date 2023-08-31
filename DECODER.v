module decoder(A,G1,GN2,GN3,Y);
input [2:0]A;
input G1, GN2, GN3;
output [7:0]Y;
reg [7:0]Y;
assign EN = G1 & ~GN2 & ~GN3;

always @(A, G1, GN2, GN3)
   begin
      if(EN == 1)
         begin
            Y = 8'd255;
			case(A)
			   3'b000: Y[0] = 1'b0;
               3'b001: Y[1] = 1'b0;
               3'b010: Y[2] = 1'b0;
               3'b011: Y[3] = 1'b0;
               3'b100: Y[4] = 1'b0;
               3'b101: Y[5] = 1'b0;
               3'b110: Y[6] = 1'b0;
               3'b111: Y[7] = 1'b0;
               default: Y = 8'd255;
            endcase
         end
   else
      Y = 8'd255;
   end
endmodule