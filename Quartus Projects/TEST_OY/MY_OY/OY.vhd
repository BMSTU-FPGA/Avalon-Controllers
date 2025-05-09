-- Этот файл содержит описание ОУ из методички в виде совокупности двух компонентов
-- УА  и ОА. УА формирует битовый вектор y[8..0]
-- Каждый разряд у инициирует выполнение соответствующей микрооперации в ОА

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity OY is									--  имя модуля
generic(n:integer);						   -- n - параметр, определяющий разрядность устройства

PORT
	(
		a		:	 in std_logic_vector(n-1 downto 0); 	--1-ый операнд (множимое)
		b		:	 in std_logic_vector(n-1 downto 0); 	--2-ой операнд (множитель)
		clk	:	 in std_logic; 								--синхросигнал
		set	:	 in std_logic; 								--сигнал начальной установки
		sno	:	 in std_logic; 								--сигнал начала операции
		sko	: 	 out std_logic; 								--сигнал конца операции
		rc		:	 out std_logic_vector(n*2-1 downto 0)	--результат (произведение)	
	);
END OY;

architecture struct of OY is --описание архитектурного тела ОУ с использованием структурного стиля
-- В описании архитектуры декларируются два компонента - ОА и УА

		
component OperationAutomat --декларация компонента ОА
generic(n:integer);											-- параметр n, определяющий разрядность устройства
PORT (y: in std_logic_vector(8 downto 0);    		--управляющие сигналы, задают микрооперации
	   x: out std_logic_vector(2 downto 0);    		--логические условия
	   a: in std_logic_vector(n-1 downto 0);    		--1-ый операнд (множимое)
	   b: in std_logic_vector(n-1 downto 0);    		--2-ой операнд (множитель)
	   rc: buffer std_logic_vector(n*2-1 downto 0);	--результат (произведение)
	   clk: in std_logic										--синхросигнал
);
end component;

component ControlUnit 	 --декларация компонента УА
Port
(
	   y: out std_logic_vector(8 downto 0);			--управляющие сигналы
	   x: in std_logic_vector(2 downto 0);    		--логические условия	
	   clk: in std_logic;                           --синхросигнал 
		set: in std_logic; 									--сигнал начальной установки
	   sno: in std_logic; 									--сигнал начала операции
		sko: out std_logic									--сигнал конца операции
);
end component;

signal x_X: std_logic_vector(2 downto 0);		--логические условия
signal y_Y: std_logic_vector(8 downto 0);		--управляющие сигналы
		
begin
-- ниже приводятся экземпляры компонентов, каждый имеет уникальную метку
unit_OA: OperationAutomat							-- это экземпляр ОА
generic map(n => n)									-- n=4
port map (y_Y,x_X,a,b,rc,clk);					-- карта портов для ОА

unit_YA:ControlUnit									-- это экземпляр УА
port map(y_Y,x_X,clk,set,sno,sko);				-- карта портов для УА
end struct ;
