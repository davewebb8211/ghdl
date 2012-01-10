entity test_val is
end test_val;

architecture test of test_val is
    signal t : time := time'value("123 fs");
begin
    process is
        variable i : integer;
        variable s : string(1 to 5) := "4345 ";
    begin
        report time'image(t);
        report time'image(time'value("2523 ps  "));
        report time'image(time'value("  2241 ns  "));
        report time'image(time'value("1 us  "));
        report time'image(time'value("0 ms"));
        report time'image(time'value("1 sec"));
        report time'image(time'value("1 min"));
        report time'image(time'value("1 hr"));
        report time'image(time'value("ms"));  -- Literal not required

        --i := integer'value("  1353 ");
        --report integer'image(i);
        i := integer'value(s);
        report integer'image(i);
        wait;
    end process;
end test;
