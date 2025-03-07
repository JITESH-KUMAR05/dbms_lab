-- 19.	Create a procedure to update the salaries of all employees whose salary is between 25000 to 50000
create or replace procedure sal as
cursor cur is select eno ,ename,esal,deptno from prg19;
a prg19.eno%type;
b prg19.ename%type;
c prg19.esal%type;
d prg19.deptno%type;
e number:=0;
begin
open cur;
loop 
fetch cur into a,b,c,d;
if (c>25000 and c<50000) then 
update prg19 set  esal =esal+2500;
e:=e+1;
fetch cur into a,b,c,d;
 dbms_output.put_line('empid is '|| a || ' empname is '|| b||'  salary is '|| c||'deptno'|| d);
end if;
exit when cur%notfound;
end loop;
close cur;
dbms_output.put_line(' count of the salary is  :  '||  e);
end;
/

declare
begin
sal;
end;
/