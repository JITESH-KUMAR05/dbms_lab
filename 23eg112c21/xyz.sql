declare
	x number(2) = 1;

begin
	loop
		dbms_output.put_line(x);
		x:=x+1;
	exit when(x > 10);
	endloop;
end;