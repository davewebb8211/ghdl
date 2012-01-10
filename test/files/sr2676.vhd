entity test is
end entity;

architecture t of test is
    type t is (A, B, C);
    signal x : t := t'value("A");
    signal x1 : t := B;
    --signal y : integer := integer'value("323");
begin

end architecture;
