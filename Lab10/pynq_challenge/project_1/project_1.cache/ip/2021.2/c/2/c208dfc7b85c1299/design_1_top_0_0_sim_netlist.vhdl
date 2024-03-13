-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Sat Apr 23 15:03:28 2022
-- Host        : DESKTOP-QO1RQK3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
  port (
    btn_out_3 : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1\ : label is "soft_lutpair0";
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
      O => btn_out_3
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 is
  port (
    btn_out_2 : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 : entity is "debounce";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 is
  signal \FSM_sequential_current_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1\ : label is "soft_lutpair2";
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
      O => btn_out_2
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_1 is
  port (
    btn_out_1 : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_1 : entity is "debounce";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_1 is
  signal \FSM_sequential_current_state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1\ : label is "soft_lutpair4";
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
      O => btn_out_1
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_2 is
  port (
    btn_out_0 : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_2 : entity is "debounce";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_2 is
  signal \FSM_sequential_current_state[1]_i_1__2_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1\ : label is "soft_lutpair6";
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
      O => btn_out_0
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_seg7 is
  port (
    ar : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ar_1_sp_1 : in STD_LOGIC;
    \ar[1]_0\ : in STD_LOGIC;
    \ar[1]_1\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_seg7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_seg7 is
  signal ar_1_sn_1 : STD_LOGIC;
begin
  ar_1_sn_1 <= ar_1_sp_1;
\ar[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000510054000000"
    )
        port map (
      I0 => Q(1),
      I1 => ar_1_sn_1,
      I2 => \ar[1]_0\,
      I3 => \ar[1]_1\,
      I4 => p_0_in,
      I5 => Q(0),
      O => ar(0)
    );
\ar[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1702020000830140"
    )
        port map (
      I0 => Q(0),
      I1 => \ar[1]_0\,
      I2 => ar_1_sn_1,
      I3 => \ar[1]_1\,
      I4 => p_0_in,
      I5 => Q(1),
      O => ar(1)
    );
\ar[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"140110C004C0BC94"
    )
        port map (
      I0 => Q(1),
      I1 => ar_1_sn_1,
      I2 => \ar[1]_0\,
      I3 => Q(0),
      I4 => \ar[1]_1\,
      I5 => p_0_in,
      O => ar(2)
    );
\ar[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFFF00BE555540"
    )
        port map (
      I0 => Q(1),
      I1 => p_0_in,
      I2 => \ar[1]_1\,
      I3 => ar_1_sn_1,
      I4 => \ar[1]_0\,
      I5 => Q(0),
      O => ar(3)
    );
\ar[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEFFFACAB959594"
    )
        port map (
      I0 => Q(1),
      I1 => p_0_in,
      I2 => \ar[1]_1\,
      I3 => ar_1_sn_1,
      I4 => \ar[1]_0\,
      I5 => Q(0),
      O => ar(4)
    );
\ar[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"551004FF00AAAABF"
    )
        port map (
      I0 => Q(1),
      I1 => ar_1_sn_1,
      I2 => \ar[1]_0\,
      I3 => \ar[1]_1\,
      I4 => p_0_in,
      I5 => Q(0),
      O => ar(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  port (
    ar : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led5_b : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led5_g : out STD_LOGIC;
    led5_r : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  signal btn_out_0 : STD_LOGIC;
  signal btn_out_1 : STD_LOGIC;
  signal btn_out_2 : STD_LOGIC;
  signal btn_out_3 : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \led[1]_i_1_n_0\ : STD_LOGIC;
  signal \led[2]_i_1_n_0\ : STD_LOGIC;
  signal \led[3]_i_1_n_0\ : STD_LOGIC;
  signal mode : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \sel[3]_i_1_n_0\ : STD_LOGIC;
  signal \sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \sel_reg_n_0_[1]\ : STD_LOGIC;
  signal \sel_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of led5_b_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of led5_g_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of led5_r_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mode[1]_i_1\ : label is "soft_lutpair8";
begin
  led(3 downto 0) <= \^led\(3 downto 0);
\ar[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1702020014830940"
    )
        port map (
      I0 => mode(0),
      I1 => p_0_in,
      I2 => \sel_reg_n_0_[1]\,
      I3 => \sel_reg_n_0_[0]\,
      I4 => \sel_reg_n_0_[2]\,
      I5 => mode(1),
      O => ar(0)
    );
debounce_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce
     port map (
      btn(0) => btn(3),
      btn_out_3 => btn_out_3,
      sw(0) => sw(0),
      sysclk => sysclk
    );
debounce_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0
     port map (
      btn(0) => btn(2),
      btn_out_2 => btn_out_2,
      sw(0) => sw(0),
      sysclk => sysclk
    );
debounce_3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_1
     port map (
      btn(0) => btn(1),
      btn_out_1 => btn_out_1,
      sw(0) => sw(0),
      sysclk => sysclk
    );
debounce_4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_2
     port map (
      btn(0) => btn(0),
      btn_out_0 => btn_out_0,
      sw(0) => sw(0),
      sysclk => sysclk
    );
led5_b_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mode(0),
      I1 => mode(1),
      O => led5_b
    );
led5_g_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mode(1),
      I1 => mode(0),
      O => led5_g
    );
led5_r_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mode(0),
      I1 => mode(1),
      O => led5_r
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
\mode[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mode(0),
      O => p_2_in(0)
    );
\mode[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mode(0),
      I1 => mode(1),
      O => p_2_in(1)
    );
\mode_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sw(1),
      CE => '1',
      CLR => sw(0),
      D => p_2_in(0),
      Q => mode(0)
    );
\mode_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sw(1),
      CE => '1',
      CLR => sw(0),
      D => p_2_in(1),
      Q => mode(1)
    );
\seg7_\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_seg7
     port map (
      Q(1 downto 0) => mode(1 downto 0),
      ar(5 downto 0) => ar(6 downto 1),
      \ar[1]_0\ => \sel_reg_n_0_[0]\,
      \ar[1]_1\ => \sel_reg_n_0_[1]\,
      ar_1_sp_1 => \sel_reg_n_0_[2]\,
      p_0_in => p_0_in
    );
\sel[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel_reg_n_0_[0]\,
      O => \sel[0]_i_1_n_0\
    );
\sel[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel_reg_n_0_[1]\,
      O => \sel[1]_i_1_n_0\
    );
\sel[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel_reg_n_0_[2]\,
      O => \sel[2]_i_1_n_0\
    );
\sel[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in,
      O => \sel[3]_i_1_n_0\
    );
\sel_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_0,
      CE => '1',
      CLR => sw(0),
      D => \sel[0]_i_1_n_0\,
      Q => \sel_reg_n_0_[0]\
    );
\sel_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_1,
      CE => '1',
      CLR => sw(0),
      D => \sel[1]_i_1_n_0\,
      Q => \sel_reg_n_0_[1]\
    );
\sel_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_2,
      CE => '1',
      CLR => sw(0),
      D => \sel[2]_i_1_n_0\,
      Q => \sel_reg_n_0_[2]\
    );
\sel_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => btn_out_3,
      CE => '1',
      CLR => sw(0),
      D => \sel[3]_i_1_n_0\,
      Q => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^ar\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  ar(7) <= \<const0>\;
  ar(6 downto 0) <= \^ar\(6 downto 0);
  led4_b <= \<const0>\;
  led4_g <= \<const0>\;
  led4_r <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
     port map (
      ar(6 downto 0) => \^ar\(6 downto 0),
      btn(3 downto 0) => btn(3 downto 0),
      led(3 downto 0) => led(3 downto 0),
      led5_b => led5_b,
      led5_g => led5_g,
      led5_r => led5_r,
      sw(1 downto 0) => sw(1 downto 0),
      sysclk => sysclk
    );
end STRUCTURE;
