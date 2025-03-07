/* amstrong number */

declare
	x number(3);
	temp number(3);
	s number(3);
	digit number(2);

begin
	x:=&x;
	temp:=x;
	while(temp!=0) 
		loop
			digit:=mod(temp,10);
			s:=s+power(digit,3);
			temp:=floor(temp/10);
		end loop;
	if(s=x) then
		dbms_output.put_line('Amstrong');
	else	
		dbms_output.put_line('Not Amstrong');
	end if;
end;
/	
	