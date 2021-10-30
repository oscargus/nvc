package pack is
    type int_vector is array (natural range <>) of natural;

    function spread_ints (x : integer) return int_vector;
end package;

package body pack is

    function spread_ints (x : integer) return int_vector is
        variable r : int_vector(1 to 6);
    begin
        for i in r'range loop
            r(i) := x;
        end loop;
        return r;
    end function;

end package body;

-------------------------------------------------------------------------------

use work.pack.all;

entity sub is
    port ( o1 : out int_vector(1 to 5);
           i1 : in integer;
           i2 : in int_vector(1 to 5) );
end entity;

architecture test of sub is
begin

    p1: process is
    begin
        assert i1 = 0;
        assert i2 = (1 to 5 => 0);
        o1 <= (1, 2, 3, 4, 5);
        wait for 1 ns;
        assert i1 = 150;
        assert i2 = (1 to 5 => 42);
        o1(1) <= 10;
        wait;
    end process;

end architecture;

-------------------------------------------------------------------------------

entity bounds22 is
end entity;

use work.pack.all;

architecture test of bounds22 is
    signal x : integer;
    signal y : int_vector(1 to 5);
    signal q : natural;

    function sum_ints(v : in int_vector) return integer is
        variable result : integer := 0;
    begin
        for i in v'range loop
            result := result + v(i);
        end loop;
        return result;
    end function;

begin

    uut: entity work.sub
        port map ( sum_ints(o1) => x,
                   i1 => sum_ints(y),
                   i2 => spread_ints(q) );  -- Error

    p2: process is
    begin
        assert x = 0;
        y <= (10, 20, 30, 40, 50);
        q <= 42;
        wait for 1 ns;
        assert x = 15;
        wait for 1 ns;
        assert x = 24;
        wait;
    end process;

end architecture;
