use novermber_24;
select country,sum(profit)t_profit,sum(sales)t_sales, 
if (sum(profit)<0,sum(sales)*0.9,if(sum(profit)>100000,
sum(sales)*1.3,sum(sales)*1.15)) as new_sales 
from superstore group by country;

select country,sum(profit)t_profit,sum(sales)t_sales,
case when sum(profit)<0 then sum(sales)*0.9
when sum(profit)>100000 then sum(sales)*1.3 else
sum(sales)*1.15 end as new_sales
from superstore group by country;

# Based on country column
#cost between 0 to 100000 then bad
#cost between 100000 and 200000 then ok
#cost between 200000 and 300000 then good 
# cost <0 then worst
#else excellent 

select country,  sum(sales-profit) as cost from superstore group by country;
select country, sum(sales-profit) as cost,
case when sum(sales-profit)<0 then "worst" 
when sum(sales-profit) between 0 and 100000 then "bad"
when sum(sales-profit) between 100000 and 20000 then "ok"
when sum(sales-profit) between 200000 and 30000 then "good"
else "exellent" end as status
from superstore group by country order by cost;

##text functions 

select  distinct customer_name, upper(customer_name)upper, lower(customer_name)lower, length(customer_name)length from superstore;

select distinct order_id,left (order_id,2)c_code, right(order_id,7)id, mid(order_id,4,4)year from superstore;

select distinct order_id, mid(order_id,4,4)year, 
substring(order_id,4,4)newyear,  # varient of mid function
position("-" in order_id)find,  # to find the 1st - position
locate ("-",order_id)2find,  #  to find the 1st - position
replace (order_id,2017,2024)newyearcurrent   # to replace year to current  year
 from superstore;

select distinct order_id , locate("-",order_id)1st_position,
locate("-",order_id,locate("-",order_id)+1)2nd_position 
from superstore;

select distinct customer_name from superstore;

select distinct Customer_name,
left(customer_name,locate(" ",customer_name)-1) first_name,
right(customer_name,length(customer-name)-locate(" ",customer_name))
 last_name from superstore;

select distinct customer_name,
substring_index(customer_name," ",1)first_name,
substring_index(customer_name," ",-1)last_name
from superstore;


### product _name  mib name space 

select distinct product_name from superstore;



