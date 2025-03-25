CREATE DEFINER=`root`@`localhost` PROCEDURE `conditions`(in eno int , out design varchar(30))
BEGIN
declare n int default 0;
select count(*) into n from emp where empno = eno;
if n>0 then
 select job into design from emp where empno = eno;
 else 
 set design = "Invalid empno supplied";
 end if;
END