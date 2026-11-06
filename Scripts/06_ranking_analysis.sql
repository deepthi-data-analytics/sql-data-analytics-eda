/*
===============================================================================
Ranking Analysis
===============================================================================
Purpose:
    - To rank items (e.g., products, customers) based on performance or other metrics.
    - To identify top performers or laggards.

SQL Functions Used:
    - Window Ranking Functions: RANK(), DENSE_RANK(), ROW_NUMBER(), TOP
    - Clauses: GROUP BY, ORDER BY
===============================================================================
*/


----which 5 products generate the highest revenue
select top 5 sum(f.sales_amount) as total_revenue,  p.product_name  from gold.dim_products p
 join  gold.fact_sales f on f.product_key = p.product_key
group by  p.product_name  order by total_revenue desc

----Using window function
select *  from(select sum(f.sales_amount) as total_revenue,  p.product_name,  row_number() over (order by sum(f.sales_amount) desc) as rnk  
from gold.dim_products p  join  gold.fact_sales f on f.product_key = p.product_key
group by p.product_name)t 
where rnk <= 5



----what are the 5 worst performing products in terms of sales
select top 5 sum(f.sales_amount) as total_revenue,  p.product_name  from gold.dim_products p
 join  gold.fact_sales f on f.product_key = p.product_key
group by  p.product_name  order by total_revenue 

-----Find top 10 customers who generated highest revenue and 3 customers with fewest orders placed
select top 10 sum(f.sales_amount) as total_revenue,  c.customer_key, c.first_name, c.last_name  from gold.dim_customers c
 join  gold.fact_sales f on c.customer_key = f.customer_key
 group by c.customer_key, c.first_name, c.last_name  order by total_revenue desc

 --3 customers with fewest orders placed
select top 3 count(distinct order_number) as few_orders,  c.customer_key, c.first_name, c.last_name  from gold.dim_customers c
 join  gold.fact_sales f on c.customer_key = f.customer_key
 group by c.customer_key, c.first_name, c.last_name  order by few_orders