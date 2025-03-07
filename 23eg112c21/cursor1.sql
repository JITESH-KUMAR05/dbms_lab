-- 16) Create a cursor, which update the salaries of all employees who works in dept no 10
First of all, create employee table with attributes empid ,empname  ,salary & deptno and insert values in it.Later ,execute  the following  code.
SQL>edit cur.sql
declare 
cursor cur is select empid ,empname,salary,deptno from employee;
a employee.empid%type;
b employee.empname%type;
c employee.salary%type;
d employee.deptno%type;
begin
open cur;
loop
if (deptno=10) then 
update employee set salary =slary+2000;
end if;
end loop;
close cur;
dbms_output.put_line('empid is '|| a || ' empname is '|| b||'salary is '|| c||'deptno'|| d);
end;