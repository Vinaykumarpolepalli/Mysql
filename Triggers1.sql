create table employee(
empno int auto_increment,
ename varchar(30) not null,
sal int not null,
primary key(empno));
use batch55;

create table employee_audit(
sno int auto_increment,
empno int not null,
sal int not null,
updatedon date,
primary key(sno));

insert into employee(ename,sal)  values( 'king',5000),
('ford',3000),
('smith',4000);
select * from employee;
update employee set sal =7000 where empno=1;
