-- 22.Create a function to find the sum of salaries of all employees working in depart number 10.
create or replace function sumsalary(n number) return number as
cursor cur4 is select esal,deptno from emp1;
c emp1.esal%type;
d emp1.deptno%type;
s number:=0;
begin
open cur4;
loop
fetch cur4 into c,d;
if (d=n) then
s:=s+c;
end if;
exit when cur4%notfound;
end loop;
close cur4;
return s;
end;
/

declare 
n number;
s number;
begin
n:=&n;
s:=sumsalary(n);
dbms_output.put_line('sum of salaries of employees belongs to deptno'||n ||'is:'||s);
end;
/