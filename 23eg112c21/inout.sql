-- 20)a) Create a procedure to demonstrate  INOUT parameters

create  or replace procedure p11(a in out  number)
is
begin
a:=a*a;
end;
/
declare
val number:=5;
begin
     p11(val);
    dbms_output.put_line('square of a val is'  || val);
end;
/
20)b) Create a procedure to demonstrate IN, OUT and INOUT parameters
Note:- Below program write in   one notepad only.
create or replace procedure findmin(x in number,y in number,z in out number) as
begin
if x<y then 
z:=x;
else
z:=y;
end if;
end;
/
declare 
a number;
b number;
c number;
begin
a:=&a;
b:=&b;
findmin(a,b,c);
dbms_output.put_line('minimum value:'||c);
end;
/