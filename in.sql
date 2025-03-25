CREATE DEFINER=`root`@`localhost` PROCEDURE `in`( in x int)
BEGIN
select job from emp where empno=x;
END