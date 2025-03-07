-- 18)create a procedure to find reverse of a given number

create or replace procedure rev( n in number, rev out number ) as 
n1 number;
r number;
begin
n1:=n;
rev:=0;
while(n1!=0)
loop
r:=mod(n1,10);
rev:=rev*10+r;
n1:=floor(n1/10);
end loop;
end;
/
declare
a number;
b number;
begin
a:=&a;
rev(a,b);
dbms_output.put_line('rev of a number is'||b);
end;
/