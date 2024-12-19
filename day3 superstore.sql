use novermber_24;
select * from superstore;
select count(*)  from superstore;
select country from superstore;
select distinct country from superstore;
select country,segment,category from superstore;
select distinct country,segment,category from superstore; 
select country,sales from superstore;
select country ,sales from superstore order by country asc ;
select country ,sales from superstore order by country desc ;
select country ,sales from superstore order by sales asc ;
select country ,sales from superstore order by sales desc; 
select country ,sales from superstore order by country asc ,sales desc;
select country ,sales from superstore
where sales >500;

select country ,sales from superstore
where sales >500 order  by sales  asc;

select country,sales from superstore
where sales >=500 and sales <=1000 order by sales asc;

select country,sales  from superstore
where sales between 500 and 1000 order by sales asc;

select distinct country ,sales from superstore
where sales =503;

select country ,sales from superstore
where country = "germany";

select country ,sales from superstore
where country= "germany" or country = "spain";

select country ,sales from superstore
where country = "italy" or country ="france"  or country ="spain";

select country ,sales  from superstore
where country in ("france","italy","spain");


select country ,sales from superstore
where country ="france" and sales>=1000  order by sales;

select  distinct country  from superstore
where country <> "france" order by country;

select distinct country from superstore
where country !="france " order by country;

select  distinct  country  from superstore
where   country  not in ("denmark","germany","finland") order by country;

select country , sales  from superstore
where  (country = "germany" or country = "spain"  or  country="france") order by country , sales>4000 ;
 select country , sales  from superstore
where  country = "germany" and sales>4000 or country ="france" and sales>4000 or country = " spain " and sales >4000  order by sales;
select country ,sales from superstore
where   country in ("germany", "spain", "france") order by country   , sales >4000 ;




 



