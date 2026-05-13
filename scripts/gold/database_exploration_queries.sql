-- Explore ALL Objects in the Database
SELECT * FROM INFORMATION_SCHEMA.TABLES

-- EXPLORE All Columns in the Database
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dim_customers'

-- Explore All Countries our customers come from. 
SELECT DISTINCT country FROM gold.dim_customers

-- Explore All categories "The major Divisions"
SELECT DISTINCT category, subcategory, product_name FROM gold.dim_products

-- Find the date of the first and last order
-- How many years of sales are avaiable
SELECT MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF (year, MIN(order_date), MAX(order_date)) AS years_of_sales
FROM gold.fact_sales

-- Find the youngest and oldest customers 
SELECT 
MIN(birthdate) AS oldest_birthdate,
DATEDIFF (year, MIN(birthdate), GETDATE()) AS oldest_age,
MAX(birthdate) AS youngest_birthdate,
DATEDIFF (year, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers
