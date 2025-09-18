-- 1. View the structure of the table
PRAGMA table_info(superstore_sales);

-- 2. Explore rows
SELECT * FROM superstore_sales LIMIT 10;

-- 3. Check distinct values in key columns
SELECT DISTINCT Category FROM superstore_sales

SELECT DISTINCT Region FROM superstore_sales

-- 4. Check date format
SELECT "Order Date" FROM superstore_sales LIMIT 10;
