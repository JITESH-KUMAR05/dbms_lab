declare
cid customer.custid%type := 8;
cname customer.custname%type;
caddr customer.address%type;
begin
select custname,address into cname,caddr from customer where custid=cid;
dbms_output.put_line('Name: ' || cname);
dbms_output.put_line('Address: ' || caddr);
EXCEPTION
when no_data_found then
dbms_output.put_line('no such customer exist in the database');
when others then
dbms_output.put_line('error!');
end ;
/