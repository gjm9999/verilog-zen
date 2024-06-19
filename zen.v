module zen(
  input clk,
  input rst_n,
  input en,
  output reg [3:0] count
);

wire [3:0]count_d;

assign count_d = count + 1'b1;

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    count <= 4'b0;
  end 
  else if(en) begin
    count <= count_d;
  end
end

endmodule
