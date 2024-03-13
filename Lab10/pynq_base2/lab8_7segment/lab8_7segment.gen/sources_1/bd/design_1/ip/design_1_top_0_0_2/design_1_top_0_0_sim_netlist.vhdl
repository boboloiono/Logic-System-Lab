-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Apr 21 13:00:54 2022
-- Host        : DESKTOP-QO1RQK3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/KevinWu/Desktop/pynq_project/pynq_base2/lab8_7segment/lab8_7segment.gen/sources_1/bd/design_1/ip/design_1_top_0_0_2/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_debounce is
  port (
    I3 : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_debounce : entity is "debounce";
end design_1_top_0_0_debounce;

architecture STRUCTURE of design_1_top_0_0_debounce is
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
begin
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(0),
      O => I3
    );
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => btn(0),
      O => next_state(0)
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => btn(0),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E0A"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => btn(0),
      I3 => current_state(0),
      O => next_state(2)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => next_state(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => next_state(2),
      Q => current_state(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_debounce_0 is
  port (
    I2 : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_debounce_0 : entity is "debounce";
end design_1_top_0_0_debounce_0;

architecture STRUCTURE of design_1_top_0_0_debounce_0 is
  signal \FSM_sequential_current_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
begin
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(0),
      O => I2
    );
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => btn(0),
      O => next_state(0)
    );
\FSM_sequential_current_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => btn(0),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => \FSM_sequential_current_state[1]_i_1__0_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E0A"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => btn(0),
      I3 => current_state(0),
      O => next_state(2)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => next_state(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => \FSM_sequential_current_state[1]_i_1__0_n_0\,
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => next_state(2),
      Q => current_state(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_debounce_1 is
  port (
    I1 : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_debounce_1 : entity is "debounce";
end design_1_top_0_0_debounce_1;

architecture STRUCTURE of design_1_top_0_0_debounce_1 is
  signal \FSM_sequential_current_state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
begin
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(0),
      O => I1
    );
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => btn(0),
      O => next_state(0)
    );
\FSM_sequential_current_state[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => btn(0),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => \FSM_sequential_current_state[1]_i_1__1_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E0A"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => btn(0),
      I3 => current_state(0),
      O => next_state(2)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => next_state(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => \FSM_sequential_current_state[1]_i_1__1_n_0\,
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => next_state(2),
      Q => current_state(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_debounce_2 is
  port (
    out0 : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_debounce_2 : entity is "debounce";
end design_1_top_0_0_debounce_2;

architecture STRUCTURE of design_1_top_0_0_debounce_2 is
  signal \FSM_sequential_current_state[1]_i_1__2_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000";
begin
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(0),
      O => out0
    );
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => btn(0),
      O => next_state(0)
    );
\FSM_sequential_current_state[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => btn(0),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => \FSM_sequential_current_state[1]_i_1__2_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E0A"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => btn(0),
      I3 => current_state(0),
      O => next_state(2)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => next_state(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => \FSM_sequential_current_state[1]_i_1__2_n_0\,
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => sw(0),
      D => next_state(2),
      Q => current_state(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_seg7 is
  port (
    ar : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_seg7 : entity is "seg7";
end design_1_top_0_0_seg7;

architecture STRUCTURE of design_1_top_0_0_seg7 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ar[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ar[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ar[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ar[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ar[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ar[6]_INST_0\ : label is "soft_lutpair0";
begin
\ar[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => ar(0)
    );
\ar[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      O => ar(1)
    );
\ar[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => ar(2)
    );
\ar[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => ar(3)
    );
\ar[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      O => ar(4)
    );
\ar[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => ar(5)
    );
\ar[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      O => ar(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ar : out STD_LOGIC_VECTOR ( 6 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal btn_out_0 : STD_LOGIC;
  signal btn_out_1 : STD_LOGIC;
  signal btn_out_2 : STD_LOGIC;
  signal btn_out_3 : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \led[1]_i_1_n_0\ : STD_LOGIC;
  signal \led[2]_i_1_n_0\ : STD_LOGIC;
  signal \led[3]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \sel[3]_i_1_n_0\ : STD_LOGIC;
begin
  led(3 downto 0) <= \^led\(3 downto 0);
debounce_1: entity work.design_1_top_0_0_debounce
     port map (
      I3 => btn_out_3,
      btn(0) => btn(3),
      sw(0) => sw(0),
      sysclk => sysclk
    );
debounce_2: entity work.design_1_top_0_0_debounce_0
     port map (
      I2 => btn_out_2,
      btn(0) => btn(2),
      sw(0) => sw(0),
      sysclk => sysclk
    );
debounce_3: entity work.design_1_top_0_0_debounce_1
     port map (
      I1 => btn_out_1,
      btn(0) => btn(1),
      sw(0) => sw(0),
      sysclk => sysclk
    );
debounce_4: entity work.design_1_top_0_0_debounce_2
     port map (
      btn(0) => btn(0),
      out0 => btn_out_0,
      sw(0) => sw(0),
      sysclk => sysclk
    );
\led[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^led\(0),
      O => p_1_in
    );
\led[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^led\(1),
      O => \led[1]_i_1_n_0\
    );
\led[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^led\(2),
      O => \led[2]_i_1_n_0\
    );
\led[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^led\(3),
      O => \led[3]_i_1_n_0\
    );
\led_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_0,
      CE => '1',
      CLR => sw(0),
      D => p_1_in,
      Q => \^led\(0)
    );
\led_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_1,
      CE => '1',
      CLR => sw(0),
      D => \led[1]_i_1_n_0\,
      Q => \^led\(1)
    );
\led_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_2,
      CE => '1',
      CLR => sw(0),
      D => \led[2]_i_1_n_0\,
      Q => \^led\(2)
    );
\led_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_3,
      CE => '1',
      CLR => sw(0),
      D => \led[3]_i_1_n_0\,
      Q => \^led\(3)
    );
\seg7_\: entity work.design_1_top_0_0_seg7
     port map (
      ar(6 downto 0) => ar(6 downto 0),
      sel0(3 downto 0) => sel0(3 downto 0)
    );
\sel[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      O => \sel[0]_i_1_n_0\
    );
\sel[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(1),
      O => \sel[1]_i_1_n_0\
    );
\sel[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(2),
      O => \sel[2]_i_1_n_0\
    );
\sel[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(3),
      O => \sel[3]_i_1_n_0\
    );
\sel_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_0,
      CE => '1',
      CLR => sw(0),
      D => \sel[0]_i_1_n_0\,
      Q => sel0(0)
    );
\sel_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_1,
      CE => '1',
      CLR => sw(0),
      D => \sel[1]_i_1_n_0\,
      Q => sel0(1)
    );
\sel_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_2,
      CE => '1',
      CLR => sw(0),
      D => \sel[2]_i_1_n_0\,
      Q => sel0(2)
    );
\sel_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_3,
      CE => '1',
      CLR => sw(0),
      D => \sel[3]_i_1_n_0\,
      Q => sel0(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led4_b : out STD_LOGIC;
    led4_g : out STD_LOGIC;
    led4_r : out STD_LOGIC;
    led5_b : out STD_LOGIC;
    led5_g : out STD_LOGIC;
    led5_r : out STD_LOGIC;
    ar : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_top_0_0 : entity is "top,Vivado 2021.2";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^ar\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  ar(7) <= \<const0>\;
  ar(6 downto 0) <= \^ar\(6 downto 0);
  led4_b <= \<const0>\;
  led4_g <= \<const0>\;
  led4_r <= \<const0>\;
  led5_b <= \<const0>\;
  led5_g <= \<const0>\;
  led5_r <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_top_0_0_top
     port map (
      ar(6 downto 0) => \^ar\(6 downto 0),
      btn(3 downto 0) => btn(3 downto 0),
      led(3 downto 0) => led(3 downto 0),
      sw(0) => sw(0),
      sysclk => sysclk
    );
end STRUCTURE;
