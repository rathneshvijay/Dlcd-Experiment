module ha_tb;

  // Inputs
  reg a;
  reg b;

  // Outputs
  wire sum;
  wire carry;

  // Instantiate the half adder module
  ha uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    // Initialize inputs and apply all input combinations
    $display("a b | sum carry");
    $display("-------------");

    a = 0; b = 0; #200;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    a = 0; b = 1; #200;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    a = 1; b = 0; #100;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    a = 1; b = 1; #200;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    $stop; // Stop simulation
  end

endmodule
