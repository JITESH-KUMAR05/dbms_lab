declare
cid customer.custid%type := &cid;
cname customer.custname%type;
caddr customer.address%type;
--user defined exception;
ex_invalid_id EXCEPTION;
begin
if cid <= 0 then
Raise ex_invalid_id;
else
select custname,address into cname,caddr from customer where custid=cid;
dbms_output.put_line('Name: ' || cname);
dbms_output.put_line('Address: ' || caddr);
end if;
EXCEPTION
when ex_invalid_id then 
dbms_output.put_line('ID must be greater than zero!');
when no_data_found then dbms_output.put_line('No Such Customer found !');
when others then 
dbms_output.put_line('Error!');
end;
/