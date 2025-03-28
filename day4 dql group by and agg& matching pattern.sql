use novermber_24;
#matching pattern  or wild card
select distinct country from superstore;
select  distinct country from superstore
where country like "s%";  # start s letter
select distinct country from superstore
where country like"%s";  #end with s letter
select distinct country  from  superstore
where country like "%s%"; #contains with s letter

select distinct country from superstore
where country like   "_____"; #contains 5 letter 
select distinct country from superstore
where country like  "__a%";  # contains 3rd position A letter
select distinct country  from superstore
where  country like  "_______"; # contains 7 letters and we can use klike this also "_______%" & "%_______" & "%________%"
select distinct country from superstore
where country not like "_______%";  #contains more than 6 to less than 7 letters   & we must take %

#******************************************************(FORMALS)***********************************************************************************
#************************************************avg,sum,max,min,count******************************************************************************
desc superstore;
select sum(sales) from superstore;
select avg(sales) from superstore;
select min(sales) from superstore;
select max(sales) from superstore;
select count(*) from superstore;     # (sales)  we get one after one 

select sum(sales),avg(sales),min(sales),max(sales),count(sales)  from superstore;   # we get all  in one table fromat  or in one line

select country,sum(sales) from superstore
group by country;
select country,sum(sales) as Totalsales_ from superstore
group by country;
select country,sum(sales)T_sales,avg(sales)avg_sales
from superstore  group by country order by  T_sales desc;
select country ,segment,sum(sales)Totalsales  from superstore
group by  country,segment;
select country ,segment,sum(sales)totalsales from superstore
group by  country,segment order by country asc, segment asc,  Totalsales desc;
select region,country,category, sum(sales)totalsales from superstore
group by region,country,category order by region asc,country asc, category asc , totalsales  desc;
# ********************************************** above statements and also we can write in other way on given below one*******************************************8
select region,country,category, sum(sales)totalsales from superstore
group by 1,2,3 order by 1,2,3,4  desc;


#another query
select country ,sum(sales)toatl from superstore
where country ="spain"
group by country;
#and also we can write in other way below one

#query
select country , sum(sales)total from superstore
where country = "germany"
group by country;

#query
select  country,sum(sales) total from superstore
where country in ("germany","france","spain")
group by country order by total asc;
#query 
select country ,sum(sales)total from superstore
where sales between  5000  and 10000 
group by country order by  total desc;

















#*************************************************** DAY 6 ****************************************************************************************8

use novermber_24;

select country ,segment, sum(sales)total from superstore
#where sales between 50000 and 100000
group by  country , segment
having sum(sales) between 50000 and 100000;

select country ,sum(sales)total from superstore
where sales > 100000
group by country order by total asc;

select country ,sum(sales)total from superstore
group by country    # filter based on the aggregatoin
having sum(sales)>10000 order by total asc;
#*******************************************************    REAL TIMES QUESTOINS **************************************************************************8888

select country ,segment ,category,sub_category,
sum(sales)total_sales,sum(quantity)total_qty,sum(profit)total_profit from superstore 
where country not in ("france ","finland", "norway")
and segment = "consumer" and
sub_category not like "s%"
and quantity >3 and profit >0
group by country ,segment ,category,sub_category
having total_sales between 5000 and 10000
order by country , total_sales asc;


alter table  supertore modify column order_date date;
alter table superstore modify column ship_date  date;
desc superstore;

select order_date ,year (order_date), month(order_date),
day(order_date),monthname(order_date)
from superstore;



 
 
















