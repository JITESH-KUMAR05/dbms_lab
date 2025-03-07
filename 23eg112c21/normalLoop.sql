declare
i number;
begin
i:= 1;
loop
dbms_output.put_line(i);
i := i+1;
exit when i>5;
end loop;
end;
/