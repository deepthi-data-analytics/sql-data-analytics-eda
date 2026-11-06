/*
===============================================================================
Dimensions Exploration
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
	
SQL Functions Used:
    - DISTINCT
    - ORDER BY
===============================================================================
*/

2)--Explore all the countries our customers come from
select distinct  country from gold.dim_customers;

---Explore all the categories "The major Divisions"
select  distinct  category,  subcategory, product_name from gold.dim_products 
order by 1, 2, 3;