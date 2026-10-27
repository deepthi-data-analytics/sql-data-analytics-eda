# SQL Exploratory Data Analysis (EDA) Using SQL Server

## Project Overview

This project explores customer, product, and sales data using Microsoft SQL Server and T-SQL. The goal is to understand the dataset, calculate key business metrics, and analyze customer and product performance through SQL queries.

## Tools Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- T-SQL

## Dataset

The project uses three tables:

- **`gold.dim_customers`** — customer details, demographics, and location.
- **`gold.dim_products`** — product details, categories, subcategories, and costs.
- **`gold.fact_sales`** — sales transactions, order dates, quantities, and sales amounts.

## Analysis Performed

### 1. Database Exploration
- Explored database tables and column metadata.
- Examined the structure of the dataset.

### 2. Dimension Exploration
- Identified customer countries.
- Explored product categories, subcategories, and products.

### 3. Date Exploration
- Identified the earliest and latest order dates.
- Examined the sales period.
- Explored customer birth dates and age ranges.

### 4. Measure Exploration
- Calculated total sales, quantities sold, and average prices.
- Counted orders, products, and customers.
- Generated a consolidated report of key business metrics.

### 5. Magnitude Analysis
- Analyzed customer distribution by country and gender.
- Examined product counts and average costs by category.
- Calculated revenue by category and customer.
- Analyzed quantities sold across countries.

### 6. Ranking Analysis
- Ranked products by revenue.
- Identified top-performing and lower-revenue products.
- Analyzed customer revenue and order counts.

## SQL Concepts Practised

- `SELECT` and `DISTINCT`
- Aggregate functions
- `GROUP BY` and `ORDER BY`
- `INNER JOIN`
- `UNION ALL`
- Date functions
- Ranking with `ROW_NUMBER()`
- Database metadata queries

## Key Learning Outcomes

- Practised exploratory data analysis using SQL.
- Developed queries to calculate business metrics.
- Explored customer, product, and sales performance.
- Practised checking imported data against source files.

## Project Background

This is a learning project based on the SQL EDA tutorial by Data with Baraa, implemented and practised in SQL Server Management Studio.

The project represents foundational SQL exploration and analysis. More advanced analytical techniques will be explored in future projects.
