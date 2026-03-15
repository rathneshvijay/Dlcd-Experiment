module hs_tb;

  // Inputs
  reg a, b;

  // Outputs
  wire diff, borrow;

  // Instantiate half subtractor
  hs uut (
    .a(a),
    .b(b),
    .diff(diff),
    .borrow(borrow)
  );

  initial begin
    $display("a b | diff borrow");
    $display("---------------");

    a = 0; b = 0; #200;
    $display("%b %b |  %b    %b", a, b, diff, borrow);

    a = 0; b = 1; #200;
    $display("%b %b |  %b    %b", a, b, diff, borrow);

    a = 1; b = 0; #200;
    $display("%b %b |  %b    %b", a, b, diff, borrow);

    a = 1; b = 1; #200;
    $display("%b %b |  %b    %b", a, b, diff, borrow);

    $stop;
  end

endmodule
