CREATE DEFINER=`root`@`localhost` PROCEDURE `inout2`(in design varchar(30), in x int)
BEGIN
select * from emp where job = design and deptno= x;
END