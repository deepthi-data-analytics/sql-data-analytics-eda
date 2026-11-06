/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/


3)
---Find the date of the first and last order
select min(order_date) as first_order_date,
max(order_date) as last_order_date from gold.fact_sales

--How many years of sales are available
select DATEDIFF(year,  min(order_date), max(order_date)) as order_range_years from gold.fact_sales

--Find the youngest and oldest customer
select min(birthdate) as oldest_birthdate, max(birthdate) as youngest_birthdate,
DATEDIFF(year, min(birthdate), Getdate()) as oldest_age,
DATEDIFF(year, max(birthdate), Getdate()) as youngest_age
from gold.dim_customers