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

