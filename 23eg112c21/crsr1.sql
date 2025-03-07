declare
cursor c1 is select empno,empname from emp;
a emp.empno%type;
b emp.empname%type;
begin
open c1;
loop
fetch c1 into a,b;
exit when c1%notfound;
dbms_output.put_line('emp id: '|| a || ' empname: '|| b);
end loop;
close c1;
end;
/