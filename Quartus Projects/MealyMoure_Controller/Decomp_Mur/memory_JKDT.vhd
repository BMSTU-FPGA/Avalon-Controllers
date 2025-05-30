library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity memory_JKDT is
Port
( 
		J, K, D, T: in std_logic;
		t1, t2, t3: buffer std_logic;
		clk, ena, clrn: in std_logic
);
end memory_JKDT;


architecture arch of memory_JKDT is
begin
	
	-- t1
	process(clk, clrn, ena)	
	begin
		if(clrn = '0') then t1 <= '0';
		else 
			if clk'event and clk = '1' and ena = '1' then
				if t1='0' then
					if J = '1' then t1 <= '1'; end if;
				else
					if K = '1' then t1 <= '0'; end if;
				end if;
			end if;
		end if;
	end process;
	
	-- t2
	process(clk, clrn, ena)
	begin
		if(clrn = '0') then t2 <= '0';
		else 
			if clk'event and clk = '1' and ena = '1' then t2 <= D; end if;
		end if;
	end process;
	
	-- t3
	process(clk, clrn, ena)
	begin
		if(clrn = '0') then t3 <= '0';
		else 
			if clk' event and clk = '1' and ena = '1' then 
				if T = '1' then t3 <= not(t3); end if;
			end if;
		end if;
	end process;

end arch;


		
					
		
