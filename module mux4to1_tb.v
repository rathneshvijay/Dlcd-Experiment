module mux4to1_tb;

  // Inputs
  reg a, b, c, d;
  reg s1, s0;

  // Output
  wire y;

  // Instantiate the mux4to1 module
  mux4to1 uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .s1(s1),
    .s0(s0),
    .y(y)
  );

  integer i; // Declare loop variable outside initial block

  initial begin
    $display("s1 s0 | a b c d | y");
    $display("--------------------");

    a = 0; b = 0; c = 0; d = 0;
    for (i = 0; i < 4; i = i + 1) begin
      {s1, s0} = i;
      #100;
      $display("%b  %b  | %b %b %b %b | %b", s1, s0, a, b, c, d, y);
    end

    a = 1; b = 0; c = 0; d = 0;
    for (i = 0; i < 4; i = i + 1) begin
      {s1, s0} = i;
      #100;
      $display("%b  %b  | %b %b %b %b | %b", s1, s0, a, b, c, d, y);
    end

    a = 0; b = 1; c = 0; d = 0;
    for (i = 0; i < 4; i = i + 1) begin
      {s1, s0} = i;
      #200;
      $display("%b  %b  | %b %b %b %b | %b", s1, s0, a, b, c, d, y);
    end

    a = 0; b = 0; c = 1; d = 0;
    for (i = 0; i < 4; i = i + 1) begin
      {s1, s0} = i;
      #200;
      $display("%b  %b  | %b %b %b %b | %b", s1, s0, a, b, c, d, y);
    end

    a = 0; b = 0; c = 0; d = 1;
    for (i = 0; i < 4; i = i + 1) begin
      {s1, s0} = i;
      #200;
      $display("%b  %b  | %b %b %b %b | %b", s1, s0, a, b, c, d, y);
    end

    $stop;
  end

endmodule
