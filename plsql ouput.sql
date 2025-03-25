use batch55;
#in 
call `in` (7788); 
#in,out
call `in,out`(7788,@designation);
select @designation;
call `in,out`(7799,@result);
select @result;
#inout
set @result =10;
call `inout`(@result);
select @result;
#conditions
call `conditions`(78399,@designation);
select @designation;
#inout3
set @x=(select empno from emp where ename ='king');
call `inout3`(@x,@result);
select * from emp where job =  @result;


call `practice2` (60);
select * from dept;
show tables;
#loop1
call`loop1`(10);
#loopwhile1
call loopwhile1(100);

#untilewhile  Funtions
select untilewhile(100);

#





select count(*) from emp where deptno = 30;
select count(*) from emp  inner join dept on emp.deptno = dept.deptno;
select deptno from dept;


select job from emp;
select * from emp;

use batch55;
CALL `pratice3`(500);
select  distinct sal,loc  from emp,dept;
