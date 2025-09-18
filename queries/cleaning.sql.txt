-- 1. Convert "Order Date" into ISO format  YYYY-MM-DD (if needed)
-- In SQLite, you can check parsing with date() or strftime()
SELECT "Order Date",
       strftime('%Y-%m-%d', "Order Date") AS order_date_clean
FROM superstore_sales
LIMIT 20;

-- Create new table for the formatted date
ALTER TABLE superstore_sales ADD COLUMN Order_Date_Clean TEXT;

UPDATE superstore_sales
SET Order_Date_Clean = 
		substr("Order Date", length("Order Date") - 3, 4) || '-' ||
		printf('%02d', substr("Order Date", 1, instr("Order Date", '/')-1)) || '-' ||
		printf('%02d', substr("Order Date", instr("Order Date", '/')+1,
			instr(substr("Order Date", instr("Order Date", '/')+1), '/')-1));

-- Check again
SELECT strftime('%Y-%m', Order_Date_Clean) AS month,
SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY month
ORDER BY month;

-- 2. Count NULL or missing values
SELECT COUNT(*) AS total_rows,
       SUM(CASE WHEN "Order Date" IS NULL OR "Order Date" = '' THEN 1 ELSE 0 END) AS missing_dates,
       SUM(CASE WHEN Sales IS NULL OR Sales = '' THEN 1 ELSE 0 END) AS missing_sales
FROM superstore_sales;

-- 3. Example: strip whitespace from string fields (e.g., Customer Name)
SELECT Customer_Name,
       TRIM(Customer_Name) AS cleaned_name
FROM superstore_sales
LIMIT 10;
