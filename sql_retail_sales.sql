
CREATE DATABASE retail_sales;
alter table `sql - retail sales analysis_utf`
rename to retail_table;
select count(*) from retail_table;
select * from retail_table;

ALTER TABLE retail_table
CHANGE COLUMN ï»¿transactions_id transaction_id INT;

SELECT *
FROM retail_table
WHERE 
    transaction_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR customer_id IS NULL
    OR gender IS NULL
    OR age IS NULL
    OR category IS NULL
    OR quantiy IS NULL
    OR price_per_unit IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;
    
-- data exploration analysis;
-- how many sales we have ;
select count(*) as total_sales from retail_table;

-- how many unique customer  we have ;
select count(distinct(customer_id)) from retail_table;
select count(distinct(category)) from retail_table;
select distinct(category) from retail_table;

-- data analysis and business key problems;
-- ques1: write a sql query to retrieve  all the columns or sales made on '2022-11-05'
select * 
from retail__table
where sale_date = '05-11-2022' ;

-- que2: write a sql query to retrieve all transaction where category is clothing and quantity sold more  10 in the month nov-2022
select *
from retail__table
where category = 'clothing' and MONTH(STR_TO_DATE(sale_date, '%d-%m-%Y')) = 11 and quantity >= 4;

-- ques3: write a sql query to calc total sales(total_sales) for each category ;
select category , sum(total_sale) as total_sales
from retail__table
group by category
order by total_sales desc;

-- ques4: write a sql query to find avg age of customer who purchase  items from 'beauty' category ; 
select round(avg(age) ,2)
from retail_table
where category = 'Beauty';

-- ques5: write a sql query to find all transaction where the total_sales is greater than 1000;
select *
from retail_table
where total_sale > 1000 ; 

-- ques6: write a sql query to find the total no. of transaction (transaction_id) made by each gender in each category ;
select gender ,category, count(transaction_id) 
from retail_table
group by gender , category 
order  by gender , category ; 

-- ques7: write a sql query to calc the avg sales for each month .find out  best selling month in each year
SELECT 
    YEAR(sale_date) AS year,
    MONTH(sale_date) AS month,
    AVG(total_sale) AS avg_sales
FROM retail_table
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY year, month;

SELECT 
    YEAR(STR_TO_DATE(sale_date, '%d-%m-%Y')) AS year,
    MONTH(STR_TO_DATE(sale_date, '%d-%m-%Y')) AS month,
    AVG(total_sale) AS avg_sales
FROM retail_table
GROUP BY YEAR(STR_TO_DATE(sale_date, '%d-%m-%Y')),
         MONTH(STR_TO_DATE(sale_date, '%d-%m-%Y'))
ORDER BY year, avg_sales desc ;

SELECT 
    year,
    month,
    avg_sales,
    DENSE_RANK() OVER (PARTITION BY year ORDER BY avg_sales DESC) AS sales_rank
FROM (
    SELECT 
        YEAR(STR_TO_DATE(sale_date, '%d-%m-%Y')) AS year,
        MONTH(STR_TO_DATE(sale_date, '%d-%m-%Y')) AS month,
        AVG(total_sale) AS avg_sales
    FROM retail_table
    GROUP BY YEAR(STR_TO_DATE(sale_date, '%d-%m-%Y')),
             MONTH(STR_TO_DATE(sale_date, '%d-%m-%Y'))
) AS t
order by year ; 
-- ques8: write a sql query to find the top 5 customer based on the highest total sales;
select * from retail_table;

select 
	customer_id , 
	sum(total_sale) as total_sales
from retail_table
group by customer_id 
order by total_sales desc 
limit 5 ;

-- ques9: write a sql query to find the number of unique customer who purchased items from each category 
select category , count(distinct customer_id)
from retail_table
group by category ; 

-- ques8: write a sql query to create each shift number of order ( example good morning <=12 , afternoor = 12 and 17 , evening > 17)
SELECT *FROM retail_table;
SELECT 
    sale_time,
    CASE
        WHEN HOUR(sale_time) < 12 THEN 'Morning'
        WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift
FROM retail_table;

-- and 
with hourly_sales
as
(
select * ,
		case
			when  extract(hour from sale_time) < 12 then 'morning'
			when  extract(hour from sale_time) between  12  and 17 then 'afternoon'
			else 'evening'
		end as shift
from retail_table
)
select count(transaction_id) , shift
from hourly_sales
group by shift;

