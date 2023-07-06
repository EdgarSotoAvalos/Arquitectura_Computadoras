-- Programa de procedimientos para dibujar circulos
----	Modificado por:	SotoAvalosEdgar
----	Diseñado Originalmente por:	Anton
----	Fecha:	7 de Junio de 2023

	--	Declaracion de bibliotecas	--
	
			library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package ctrl is
    procedure SQ(
        SIGNAL Xcur, Ycur, Xpos, Ypos, Radius : in integer;
        SIGNAL RGB : out std_logic_vector(7 downto 0);
        SIGNAL DRAW : out std_logic
    );
end ctrl;

package body ctrl is
    procedure SQ(
        SIGNAL Xcur, Ycur, Xpos, Ypos, Radius : in integer;
        SIGNAL RGB : out std_logic_vector(7 downto 0);
        SIGNAL DRAW : out std_logic
    ) is
        variable Xcenter : integer := Xpos + Radius;
        variable Ycenter : integer := Ypos + Radius;
    begin
        if ((Xcur - Xcenter)**2 + (Ycur - Ycenter)**2) <= Radius**2 then
            RGB <= "11111111";
            DRAW <= '1';
        else
            DRAW <= '0';
        end if;
    end SQ;
end ctrl;
