-- 25.Create a trigger before/after insert on the employee table for each row/statement.

create or replace trigger t5
before insert on emp1
for each row
begin
dbms_output.put_line(&#39;row inserted&#39;);
end;
/