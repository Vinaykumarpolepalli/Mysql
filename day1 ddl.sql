create database novermber_24;
show databases;
use novermber_24;
create table sample (sno int, names varchar(30));
show tables;
drop table sample;
create table sample (sno int, sname varchar(30),city varchar(30));
desc sample;

select * from sample;
insert into sample values (1, "vinay kumar", "mudigubba"),(2, "guru"  , "anantapur"),
(3,"rakesh", "banglore"),(4, "sravan" , "kadapa");
select * from sample;

alter table sample add column age tinyint ;
alter  table sample add column sale int;
desc sample;
select * from sample;
desc sample;
select * from sample;
insert into sample  values(5,"kumar" ,"mumbia", 23,30000);
insert into sample  values(6,"raju" ,"kadiri", 33,50000);
insert into sample  values(7,"ravi" ,"pune", 63,60000);
desc sample;
select * from sample;
insert into sample values (1, "vinay kumar", "mudigubba",22,34323);
insert into sample values (8, "pavan", "surat",345, 60000);
alter table sample modify  column   age int;
alter table sample change  column   age total int;
alter table sample drop column total;
rename  table sample  to  example;
alter  table sample rename example;

show tables;
alter  table example rename sample;

##truncate example;
select * from example;



