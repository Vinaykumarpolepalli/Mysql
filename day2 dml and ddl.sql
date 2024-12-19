use novermber_24;
alter table example rename sample;
create table sample1( sno  int ,sname varchar (30),city varchar (30) ,sales int );
truncate sample;

insert into sample1 values (1, "ajay" ,"banglore" , 5000),
(2,"jay" , "chennai",null),(3,"vijay",null , 8000),(4,"kumar",null,null);

show tables;
insert into sample1 (sno , sname) values (5,"rani");
insert into sample1 (city , sales) values ("pune" , 15000);
insert into sample1 (city , sales) values ("pune" , 25000);
set sql_safe_updates=0;
update sample1 set city = "banglore" where sname = "kumar";
update sample1 set sales = 35000 where sname = "rani";
update sample1 set  city ="surat" where sname="vijay" or sname= "rani";
update sample1 set  sales = 0  where sales is null;
delete from sample1 where city = "chennai";
delete from sample1 where sales = 0;
delete from sample1 where sales  = 25000;
select *from sample1;
delete from sample1 where sname = "ajay";
delete from sample1 where sname = "akash";
insert into sample1 values (5,"rani", "pune",35000),(6,"rani","surat",15000),(8,"rani","banglore",50000),(9,"rani","banglore",50000),
(10,"suraj","banglore",5000);
delete from sample1 where sno = 5;
delete from sample1 where sno = 3;
insert into sample1 values (5, "rani" ,"surat" , 35000);
delete from sample1   where city="surat" or sales = 15000;
delete from sample1   where sname="rani" and city= "banglore";