declare
vsno stu.sno%type;
s stu%rowtype;
r result%rowtype;
begin
vsno := &sno;
select * into s from stu where sno = vsno;
r.total := s.dbms+s.oops+s.co;
r.avg := r.total/3;
if s.dbms>=35 and s.oops>=35 and s.co>=35 then 
r.result:= 'pass';
else
r.result := 'fail';
end if;
insert into result values(vsno,r.total,r.avg,r.result);
commit;
end;
/