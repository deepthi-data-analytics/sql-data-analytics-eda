/*
===============================================================================
Database Exploration
===============================================================================
Purpose:
    - To explore the structure of the database, including the list of tables and their schemas.
    - To inspect the columns and metadata for specific tables.

Table Used:
    - INFORMATION_SCHEMA.TABLES
    - INFORMATION_SCHEMA.COLUMNS
===============================================================================
*/

1)--Explore all the objects in the Database
select *  from Information_schema.tables

--Explore all the columns in the Database
select  *  from Information_schema.columns
where table_name = 'dim_customers';