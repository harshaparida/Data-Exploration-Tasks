create database online_sales;
use online_sales;
select * from online_sales;

# a. Use EXTRACT(MONTH FROM order_date) for month.

SELECT EXTRACT(MONTH FROM Date) AS order_month FROM  online_sales;

# b.GROUP BY year/month.
SELECT 
    EXTRACT(YEAR FROM `Date`) AS order_year,
    EXTRACT(MONTH FROM `Date`) AS order_month
FROM 
    online_sales
GROUP BY 
    order_year, order_month;
    

# c. Use SUM() for revenue.

SELECT 
    SUM(`Total Revenue`) AS total_revenue
FROM 
    online_sales;
    
# d. COUNT(DISTINCT order_id) for volume.

SELECT 
    COUNT(DISTINCT `Transaction ID`) AS total_order_volume
FROM 
    online_sales;
    
-- Monthly Volume with Revenue
SELECT 
    EXTRACT(YEAR FROM `Date`) AS order_year,
    EXTRACT(MONTH FROM `Date`) AS order_month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS total_order_volume
FROM 
    online_sales
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;


# e. Use ORDER BY for sorting.

-- highest first
SELECT 
    `Product Category`,
    SUM(`Total Revenue`) AS total_revenue
FROM 
    online_sales
GROUP BY 
    `Product Category`
ORDER BY 
    total_revenue DESC;

-- top 5
SELECT 
    `Product Name`,
    SUM(`Total Revenue`) AS total_revenue
FROM 
    online_sales
GROUP BY 
    `Product Name`
ORDER BY 
    total_revenue DESC
LIMIT 5;

# f. Limiting to a Specific Month Only (e.g., March 2024)

SELECT 
    EXTRACT(YEAR FROM `Date`) AS order_year,
    EXTRACT(MONTH FROM `Date`) AS order_month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS total_order_volume
FROM 
    online_sales
WHERE 
    `Date` >= '2024-03-01' AND `Date` < '2024-04-01'
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;







