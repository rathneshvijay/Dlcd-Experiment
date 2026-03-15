module demux1to4_tb;

  reg din, s1, s0;
  wire y0, y1, y2, y3;

  demux1to4 uut (
    .din(din),
    .s1(s1),
    .s0(s0),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
  );

  integer i;  // Declare loop variable at module level

  initial begin
    $display("din s1 s0 | y0 y1 y2 y3");
    $display("------------------------");

    for (i = 0; i < 8; i = i + 1) begin
      {din, s1, s0} = i;
      #200;
      $display(" %b  %b  %b |  %b  %b  %b  %b", din, s1, s0, y0, y1, y2, y3);
    end

    $stop;
  end

endmodule
