module decoder2to4_tb;

  // Inputs
  reg a, b;

  // Outputs
  wire [3:0] y;

  // Instantiate the decoder module
  decoder2to4 uut (
    .a(a),
    .b(b),
    .y(y)
  );

  integer i;  // Declare loop variable at module level

  initial begin
    $display("a b | y3 y2 y1 y0");
    $display("-----------------");

    for (i = 0; i < 4; i = i + 1) begin
      {a, b} = i;
      #200;
      $display("%b %b |  %b  %b  %b  %b", a, b, y[3], y[2], y[1], y[0]);
    end

    $stop;
  end

endmodule

