-- 17.Create a cursor, which displays names of employees having salary > 50000.
First of all, create employee table with attributes empid ,empname  ,salary & deptno and insert values in it.Later ,execute  the following  code.
SQL>edit cur1.sql
declare 
cursor cur is select empid ,empname,salary,deptno from employee;
a employee.empid%type;
b employee.empname%type;
c employee.salary%type;
d employee.deptno%type;
begin
open cur;
loop 
fetch cur into a,b,c,d;
if (c>=50000) then 
 dbms_output.put_line('empid is '|| a || ' empname is '|| b||'  salary is '|| c||'deptno'|| d);
end if;
exit when cur%notfound;
end loop;
close cur;
end;