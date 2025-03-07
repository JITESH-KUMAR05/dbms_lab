declare 
i number(3);
j number(3);
begin
dbms_output.put_line('the prime numbers are: ');
dbms_output.new_line;
i:=2;
loop
j:=2;
loop
exit when((mod(i,j)=0)OR(i=j));
j := j+1;
end loop;
if(i = j) then
dbms_output.put_line(i || ' ');
end if;
i:=i+1;
exit when i=100;
end loop;
dbms_output.new_line;
End;
/