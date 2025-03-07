declare
i number;
begin
-- dbms_output.put
i := &i;
if(i >= 0) then 
goto here;
else
dbms_output.put_line('i is negative');
end if;
goto abc;
<<here>>
dbms_output.put_line('i is positive ');
<<abc>>
dbms_output.put_line(' ');
end;
/