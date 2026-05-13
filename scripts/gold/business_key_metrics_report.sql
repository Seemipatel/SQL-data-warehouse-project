-- Find the Total Sales 
SELECT SUM(sales_amount) AS total_sales FROM gold.dim_products

-- Find how many items are sold
SELECT SUM(quantity) AS total_quantity FROM gold.dim_products

-- Find the average selling price
SELECT AVG(price) AS avg_price FROM gold.dim_products

-- Find the total number of orders
SELECT Count(order_number) AS total_orders FROM gold.dim_products
SELECT Count(DISTINCT order_number) AS total_orders FROM gold.dim_products

-- Find the total number of products
SELECT COUNT(DISTINCT product_key) AS total_products FROM gold.dim_products

-- Find the total number of customers
SELECT COUNT(customer_key) AS total_customers FROM gold.dim_customers

-- Find the total number of customers that has placed an order
SELECT COUNT(DISTINCT customer_key) AS total_customers FROM gold.fact_sales


-- Generate a report that shows all key metrics of the business
SELECT 'Total Sales' as measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity' as measure_name, SUM(quantity) AS measure_value FROM gold.fact_sales
UNION ALL 
SELECT 'Average Price' as measure_name, AVG(price)  FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr.Orders', count(DISTINCT order_number) FROM gold.fact_sales
UNION ALL 
SELECT 'Total Nr.Products', COUNT(product_name) FROM gold.dim_products
UNION ALL 
SELECT 'Total Nr.Customers', COUNT(customer_key) FROM gold.dim_customers
