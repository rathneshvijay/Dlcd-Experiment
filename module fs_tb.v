module fs_tb;

  // Inputs
  reg a, b, bin;

  // Outputs
  wire diff, bout;

  // Loop variable
  integer i;

  // Instantiate full subtractor
  fs uut (
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
  );

  initial begin
    $display("a b bin | diff bout");
    $display("------------------");

    for (i = 0; i < 8; i = i + 1) begin
      {a, b, bin} = i;
      #10;  // small delay is enough
      $display("%b %b  %b  |   %b    %b", a, b, bin, diff, bout);
    end

    $stop;
  end

endmodule
