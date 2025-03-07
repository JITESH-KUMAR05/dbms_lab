/* amstrong number */

declare
n number;
c number;
m number;
r number;
begin
n := &n;
c := 0;
m := n;
while(n!=0)
loop
r:= mod(n,10);
c := c+power(r,3);
n := floor(n/10);
end loop;
if(m=c) then
dbms_output.put_line('number is an amstrong number ');
else
dbms_output.put_line('number is not an amstrong number ');
end if;
end;
/