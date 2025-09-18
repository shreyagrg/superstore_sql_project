-- 1. Monthly sales trend
SELECT strftime('%Y-%m', Order_Date_Clean) AS month, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY month
ORDER BY month;

-- 2. Sales by category
SELECT Category, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY Category
ORDER BY total_sales DESC;

-- 3. Top 10 products by sales
SELECT "Product Name", SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;

-- 4. Sales by region
SELECT Region, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY Region
ORDER BY total_sales DESC;

-- 5. Profit vs. Sales (to check profitability patterns)
SELECT strftime('%Y-%m', "Order Date") AS month,
       ROUND(SUM(Sales), 2) AS total_sales,
       ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY month
ORDER BY month;

-- 6. Which shipping mode is most popular?
SELECT "Ship Mode",
       COUNT(*) AS order_count,
       ROUND(SUM(Sales), 2) AS total_sales
FROM superstore_sales
GROUP BY "Ship Mode"
ORDER BY total_sales DESC;
