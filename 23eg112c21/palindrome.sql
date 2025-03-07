21.Create a function to check whether a given string is palindrome or not.
create or replace function palin(s1 varchar2) return varchar2 as 
s2 varchar2(20);
s3 varchar2(20);
begin
s2:=s1;
select reverse (s2) into s3 from dual;
return s3;
end;
/

declare
a varchar2(20);
b varchar2(20);
begin
a:=&a;
b:=palin(a);
if a=b then
dbms_output.put_line('Given number is palindrome ');
else
dbms_output.put_line('Given number is not a palindrome');
end if;
end;
/