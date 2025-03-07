declare
my_empid empl.empid%type;
my_empname empl.empname%type;
my_emprow empl%rowtype;
no number := 0;
begin
no:=&no;
select empid,empname into my_empid,my_empname from empl where empid = no;
if(sql%rowcount =1)then
dbms_output.put_line('empid is ' || my_empid ||',' || 'empname is ' || my_empname);
else
dbms_output.put_line('error');
end if;
select * into my_emprow from empl where empid = no;
if(sql%rowcount=1)then
dbms_output.put_line('empid is :' || my_empid || ',' || 'empname is ' || my_empname);
else
dbms_output.put_line('error');
end if;
end;
/