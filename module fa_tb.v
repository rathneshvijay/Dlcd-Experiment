module fa_tb;

  // Inputs
  reg a, b, c;

  // Outputs
  wire sum, carry;

  // Instantiate the full adder
  fa uut (
    .a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .carry(carry)
  );

  integer i;  // Declare integer variable outside initial block

  initial begin
    $display("a b c | sum carry");
    $display("--------------");

    for (i = 0; i < 8; i = i + 1) begin
      {a, b, c} = i;
      #200;
      $display("%b %b %b |  %b    %b", a, b, c, sum, carry);
    end

    $stop;
  end

endmodule
