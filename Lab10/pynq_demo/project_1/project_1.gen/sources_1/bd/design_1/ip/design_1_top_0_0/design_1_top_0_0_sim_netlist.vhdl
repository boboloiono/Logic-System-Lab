-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Sat Apr 23 14:43:28 2022
-- Host        : DESKTOP-QO1RQK3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/KevinWu/Desktop/pynq_project/pynq_demo/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_seg7 is
  port (
    ar : out STD_LOGIC_VECTOR ( 6 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    sw : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_seg7 : entity is "seg7";
end design_1_top_0_0_seg7;

architecture STRUCTURE of design_1_top_0_0_seg7 is
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \sel[1]_i_1_n_0\ : STD_LOGIC;
  signal sel_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ar[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ar[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ar[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ar[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ar[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ar[5]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ar[6]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sel[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sel[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sel[3]_i_1\ : label is "soft_lutpair3";
begin
\ar[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => sel_reg(3),
      I1 => sel_reg(2),
      I2 => sel_reg(0),
      I3 => sel_reg(1),
      O => ar(0)
    );
\ar[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => sel_reg(3),
      I1 => sel_reg(2),
      I2 => sel_reg(1),
      I3 => sel_reg(0),
      O => ar(1)
    );
\ar[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sel_reg(3),
      I1 => sel_reg(0),
      I2 => sel_reg(1),
      I3 => sel_reg(2),
      O => ar(2)
    );
\ar[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => sel_reg(3),
      I1 => sel_reg(2),
      I2 => sel_reg(0),
      I3 => sel_reg(1),
      O => ar(3)
    );
\ar[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => sel_reg(3),
      I1 => sel_reg(1),
      I2 => sel_reg(2),
      I3 => sel_reg(0),
      O => ar(4)
    );
\ar[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => sel_reg(3),
      I1 => sel_reg(2),
      I2 => sel_reg(0),
      I3 => sel_reg(1),
      O => ar(5)
    );
\ar[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => sel_reg(3),
      I1 => sel_reg(0),
      I2 => sel_reg(2),
      I3 => sel_reg(1),
      O => ar(6)
    );
\sel[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel_reg(0),
      O => \sel[0]_i_1_n_0\
    );
\sel[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel_reg(0),
      I1 => sel_reg(1),
      O => \sel[1]_i_1_n_0\
    );
\sel[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sel_reg(0),
      I1 => sel_reg(1),
      I2 => sel_reg(2),
      O => p_0_in(2)
    );
\sel[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sel_reg(1),
      I1 => sel_reg(0),
      I2 => sel_reg(2),
      I3 => sel_reg(3),
      O => p_0_in(3)
    );
\sel_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => btn(0),
      CE => '1',
      CLR => sw(0),
      D => \sel[0]_i_1_n_0\,
      Q => sel_reg(0)
    );
\sel_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => btn(0),
      CE => '1',
      CLR => sw(0),
      D => \sel[1]_i_1_n_0\,
      Q => sel_reg(1)
    );
\sel_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => btn(0),
      CE => '1',
      CLR => sw(0),
      D => p_0_in(2),
      Q => sel_reg(2)
    );
\sel_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => btn(0),
      CE => '1',
      CLR => sw(0),
      D => p_0_in(3),
      Q => sel_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    ar : out STD_LOGIC_VECTOR ( 6 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    sw : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
begin
seg7: entity work.design_1_top_0_0_seg7
     port map (
      ar(6 downto 0) => ar(6 downto 0),
      btn(0) => btn(0),
      sw(0) => sw(0)
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
  led(3) <= \<const0>\;
  led(2) <= \<const0>\;
  led(1) <= \<const0>\;
  led(0) <= \<const0>\;
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
      btn(0) => btn(3),
      sw(0) => sw(0)
    );
end STRUCTURE;
