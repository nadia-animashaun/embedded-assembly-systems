LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY stdnum_logic IS
PORT
(
button : IN STD_LOGIC;
in0 : IN STD_LOGIC;
in1 : IN STD_LOGIC;
in2 : IN STD_LOGIC;
in3 : IN STD_LOGIC;
in4 : IN STD_LOGIC;
in5 : IN STD_LOGIC;
in6 : IN STD_LOGIC;
in7 : IN STD_LOGIC;
good_out : OUT STD_LOGIC
);
END stdnum_logic;
ARCHITECTURE our_logic OF stdnum_logic IS
begin
good_out <= button AND (in0 AND in1 AND in4 AND (NOT in2) AND (NOT in3) AND (NOT in5) AND (NOT in6) AND (NOT in7));
end our_logic;