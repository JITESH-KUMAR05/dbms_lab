/*
this program is for greatest number 
*/
declare
	x number(3) ;
	y number(3) ;
	z number(3) ;
begin
	x:=&x;
	y:= &y;
	z:=&z;
	if(x > y and x > z) then
		dbms_output.put_line('The greatest value is :');
		dbms_output.put_line(x);
	elsif(y > x and y > z) then
	dbms_output.put_line('The greatest value is :');
		dbms_output.put_line(y);
	else
	dbms_output.put_line('The greatest value is :');
		dbms_output.put_line(z);
	end if;
end;
/

