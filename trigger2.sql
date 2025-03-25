delimiter //
create trigger afterinsertemployee
after insert
on employee
for each row
begin
insert into employee_audit  
(empno, sal,updatedon)
 values(new.empno,new.sal,curdate());
 end;
 //