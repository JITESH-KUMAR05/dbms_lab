-- 19.	Create a procedure to update the salaries of all employees whose salary is between 25000 to 50000
CREATE OR REPLACE PROCEDURE sal AS
    CURSOR cur IS 
        SELECT eno, ename, esal, deptno FROM prg19;
    a prg19.eno%TYPE;
    b prg19.ename%TYPE;
    c prg19.esal%TYPE;
    d prg19.deptno%TYPE;
    e NUMBER := 0;
BEGIN
    OPEN cur;
    LOOP 
        FETCH cur INTO a, b, c, d;
        EXIT WHEN cur%NOTFOUND;
        
        IF (c > 25000 AND c < 50000) THEN 
            UPDATE prg19 
            SET esal = esal + 2500 
            WHERE eno = a;
            e := e + 1;
            dbms_output.put_line('empid is ' || a || ' empname is ' || b || ' salary is ' || (c + 2500) || ' deptno ' || d);
        END IF;
    END LOOP;
    CLOSE cur;
    dbms_output.put_line('Count of the updated salaries is: ' || e);
END;
/

DECLARE
BEGIN
    sal;
END;
/
