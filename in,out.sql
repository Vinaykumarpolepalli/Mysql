CREATE DEFINER=`root`@`localhost` PROCEDURE `in,out`(in x int , out design varchar(30))
BEGIN
 select job into design from emp where empno= x;
END