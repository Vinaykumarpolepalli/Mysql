CREATE DEFINER=`root`@`localhost` PROCEDURE `inout3`(in x int , out design varchar(50))
BEGIN
declare a int default 0;
select count(*) from emp where empno= x;
if a>0 then
select job into design  from  emp where empno=x ;
else
set design ="no emp found  with given empno";
end if;

END