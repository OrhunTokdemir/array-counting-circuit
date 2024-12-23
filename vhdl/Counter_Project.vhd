library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter_Project is
port(clk:in std_logic;-- giris olarak sadece saat var
	f0,f1,f2:out std_logic);-- cikis olarak f2 en buyuk basamak f0 en kucuk basama�� temsil edicek
end Counter_Project;

architecture behavioral of Counter_Project is
signal X0 : std_logic:='0';-- degerini korudugu icin deger ve yap�sal ile davran�ssal mimariyi ayn� anda kullanmaya izin verdi�i i�in 
signal x1 : std_logic:='0';--signal kulland�m
signal A0 : std_logic:='0';
signal A1 : std_logic:='0';
signal A2 : std_logic:='0';
signal j0 : std_logic:='0';
signal k0 : std_logic:='0';
signal j1 : std_logic:='0';
signal k1 : std_logic:='0';
signal j2 : std_logic:='0';
signal k2 : std_logic:='1';
signal jx0 : std_logic:='0';
signal kx0 : std_logic:='1';
signal jx1 : std_logic:='0';
signal kx1 : std_logic:='1';

begin-- kernough haritalar�ndan ��kan e�itlikleri signallere atad�m. k2, kx0 ve kx1 in de�eri 
j2<=((not A1)and A0)or (x1 and (not x0)and A0) ;--sabit ve bir de�erinde oldugu i�in burda bir de�i�iklik yapmad�m
j1<=A2 and A0;
k1<=((x1 and(not x0))and((not A2)and A0));
j0<=(not A2) or A1;
k0<=(A2 and (not A1))or((x1 and(not x0))and(not A2)and A1);
jx1<=(x0 and(not A2)and A1 and A0);
jx0<=(not x1)and(not A2)and A1 and A0;
process(clk,j2,k1,j1,k1,j0,k0,jx1,kx1,jx0,kx0)
begin
	if(clk='1' and clk'event)then--devrenin s�ral� olmas� icin saat kullan�r�z
	--devre 5 bit i�lemekte oldu�u i�in 5 flip flop kullan�l�yor. bu be� bitin sadece 3 � g�r�nt�lenecektir. bunlar sirasiyla A2 A1 A0 dir
		--jk xo 
		if(jx0='0'and kx0='0')then
			x0<=x0;
		elsif(jx0='0'and kx0='1')then
			x0<='0';
		elsif(jx0='1'and kx0='0')then
			x0<='1';
		else
			x0<=not x0;
			end if;
				
		--jk x1
		if(jx1='0'and kx1='0')then
			x1<=x1;
		elsif(jx1='0'and kx1='1')then
			x1<='0';
		elsif(jx1='1'and kx1='0')then
			x1<='1';
		else
			x1<=not x1;
			end if;
				
		--jk A0
		if(j0='0'and k0='0')then
			A0<=A0;
		elsif(j0='0'and k0='1')then
			A0<='0';
		elsif(j0='1'and k0='0')then
			A0<='1';
		else
			A0<=not A0;
			end if;
				
		--jk A1
		if(j1='0'and k1='0')then
			A1<=A1;
		elsif(j1='0'and k1='1')then
			A1<='0';
		elsif(j1='1'and k1='0')then
			A1<='1';
		else
			A1<=not A1;
		end if;
		
		--jk A2
		if(j2='0'and k2='0')then
			A2<=A2;
		elsif(j2='0'and k2='1')then
			A2<='0';
		elsif(j2='1'and k2='0')then
			A2<='1';
		else
			A2<=not A2;
		end if;
		
		
	end if;--x1 ve x0 bitleri 3 say�s�n�n tekrar�n� kontrol etmektedir ve g�r�nt�lenmeyecektir.
	    f0<=A0;
		f1<=A1;
		f2<=A2;
end process;
end behavioral;