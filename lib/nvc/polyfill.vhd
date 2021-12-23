-------------------------------------------------------------------------------
--  Copyright (C) 2021  Nick Gasson
--
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU Lesser General Public License as
--  published by the Free Software Foundation; either version 3 of the
--  License, or (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful, but
--  WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
--  Lesser General Public License for more details.
--
--  You should have received a copy of the GNU Lesser General Public License
--  along with this program; if not, see <http://www.gnu.org/licenses/>.
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- This package provides VHDL-1993 compatibility wrappers for future standard
-- revisions.
-------------------------------------------------------------------------------

package polyfill is

    function to_string (value : real; spec : string) return string;

    function to_string (value : integer) return string;

    function to_hstring (value : bit_vector) return string;

    function to_ostring (value : bit_vector) return string;

    function maximum (x, y : integer) return integer;

    function minimum (x, y : integer) return integer;

end package;