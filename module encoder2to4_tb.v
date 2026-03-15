module encoder2to4_tb;

  // Inputs
  reg [3:0] din;

  // Outputs
  wire [1:0] y;

  // Instantiate the encoder2to4 module
  encoder2to4 uut (
    .din(din),
    .y(y)
  );

  initial begin
    $display("din     | y");
    $display("--------|---");

    // Test valid input cases where only one bit is high
    din = 4'b0001; #200;
    $display("%b | %b", din, y);

    din = 4'b0010; #200;
    $display("%b | %b", din, y);

    din = 4'b0100; #200;
    $display("%b | %b", din, y);

    din = 4'b1000; #200;
    $display("%b | %b", din, y);

    // Test case with no input high (optional)
    din = 4'b0000; #200;
    $display("%b | %b", din, y);

    $stop;
  end

endmodule
