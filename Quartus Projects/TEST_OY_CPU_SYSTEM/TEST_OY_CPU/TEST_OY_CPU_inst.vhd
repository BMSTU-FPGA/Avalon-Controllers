	component TEST_OY_CPU is
		port (
			clk_clk                                : in  std_logic                     := 'X'; -- clk
			mealymoure_mm_controller_0_ledg_export : out std_logic_vector(8 downto 0);         -- export
			mealymoure_mm_controller_0_ledr_export : out std_logic_vector(17 downto 0)         -- export
		);
	end component TEST_OY_CPU;

	u0 : component TEST_OY_CPU
		port map (
			clk_clk                                => CONNECTED_TO_clk_clk,                                --                             clk.clk
			mealymoure_mm_controller_0_ledg_export => CONNECTED_TO_mealymoure_mm_controller_0_ledg_export, -- mealymoure_mm_controller_0_ledg.export
			mealymoure_mm_controller_0_ledr_export => CONNECTED_TO_mealymoure_mm_controller_0_ledr_export  -- mealymoure_mm_controller_0_ledr.export
		);

