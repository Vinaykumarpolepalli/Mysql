use novermber_24;
#Basic Dates
select curdate();
select currunt_date();    # current date 
select curtime();
select current_time();# current time
select now();
select current_timestamp();   # current time with minute with second

select year(curdate());

select hour(now())hour,minute(now())minute,second(now())second;    # current hourand minute and second

select day(now())day,month(now())month,year(now())year;   # current day and month and year

select day(now())day,month(now())month,year(now())year,monthname(now()); #current day and month and year with current month name

select date_format(curdate(),"%d%a-%b-%y");      # we can write in both ways in the form ,and we have two methods in this form.
select date_format(curdate(),"%D-%m-%y");
select date_format(curdate(),"%d-%m-%y"); 


select weekday(curdate());     #mon-0, thu-1,wed-2   
select dayofweek(curdate());   #sun-1 ,mon-2,Tue-3

select quarter(curdate());

#year wise Total sales
desc superstore;

select year(order_date)year,sum(sales)Total_sales from superstore group by 1 order by year;
select dayname(order_date)day_name, weekday(order_date)dayno, sum(sales)total_sales from superstore group by
  dayname(order_date), weekday(order_date)order by weekday(order_date);
  
  select monthname(order_date)month ,sum(sales)sales from superstore
  group by  monthname(order_date) order by sales desc;
  
  select month_name,sales from(
  select month(order_date)month_no,
monthname(order_date)month_name, sum(sales)sales from superstore 
group by 1,2 order by month_no)ab;

#day wise sales Day start from mon, Tue, wed
select day_name,sales from(
select  weekday(order_date)dayno, dayname(order_date)day_name,
sum(sales)sales from superstore
group by 1,2 order by 1)ab;

# Each Quarter wise sales
select  concat("Qtr-",quarter(order_date))qty, sum(sales)sales from superstore
group by  1 order by 1; 
select profit from superstore order by 1;
select profit ,if (profit>=0, "good","bad") 
from superstore order by 1;

select year(order_date)year, monthname(order_date)month_name, sum(sales)sale from superstore
group by 1,2;
 
select year(order_date)year, monthname(order_date)m_name,
sum(sales)sales,if (sum(sales)>50000,"good","bad") status
from superstore
group by 1,2 order by sales;








