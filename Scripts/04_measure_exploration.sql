/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/

--Measure Exploration
----Find the Total Sales
select  sum(sales_amount) as total_sales from gold.fact_sales

---Find how many items are sold
select sum(quantity) as total_quantity from gold.fact_sales

---Find the average selling price
select avg(price) as avg_price from gold.fact_sales

---Find the total number of orders
select count(distinct order_number) as total_orders from gold.fact_sales

---Find the total number of products
select count(product_name) as total_products from gold.dim_products

---Find the total number of customers
select count(customer_key) as total_customers from gold.dim_customers

---Find the total number of customers that has placed an order
select  count(distinct customer_key) as total_customers from gold.fact_sales

---Generate a report that shows all the metrics of the business
select  'Total_Sales' as measure_name, sum(sales_amount) as measure_value from gold.fact_sales
union all
select 'total_quantity' as measure_name, sum(quantity) as measure_value from gold.fact_sales
union all
select 'avg_price' as measure_name,  avg(price) as measure_value from gold.fact_sales
union all
select 'total_orders' as measure_name,   count(distinct order_number) as measure_value from gold.fact_sales
union all
select  'total_products' as measure_name, count(product_name) as measure_value from gold.dim_products
union all
select 'total_customers' as measure_name,  count(customer_key) as measure_value from gold.dim_customers

