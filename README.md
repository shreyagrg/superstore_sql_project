# Superstore Retail Sales Data Analytics Project

**Author:** Shreya Gurung
**Project Type:** Data Analytics / Business Insights

## Project Overview

This project analyses Superstore sales data from 2014 to 2017 to extract business insights:
- Monthly sales trends
- Profit vs. Sales comparisons
- Sales by category and region

This is my first data analytics project. The goal is to combine **SQL, Python, Visualisation skills** to create a complete data analysis workflow.

---

## Learnings

Initially, I thought **data analytics was about writing SQL queries and visualisations**. Through this project, I learned:
- Clean data is the key
- ETL processes(Extract, Transform, Load)** cleaning, transforming and loading data safely
- Generated visualisations for trends, categories, regions and profit
- Asking right business-focused questions first, then explore data
- Python + Jupyter workflow, which is safer and more flexible than altering tables directly in SQL

While I started with SQL, I transitioned into Python and Jupyter Notebook because:
- Python allows safe, flexible and reproducible data cleaning and transformation 
- Jupyter Notebook combine code, visuals and narrative in one document - perfect for storytelling
- I can iterate on data without overwriting the raw dataset
- Libraries like pandas, matplotlib, seabird make visualisation and analysis faster and more professional

This project helped me learn new commands and technologies like 'strftime' for date grouping, dual-axis charts and Jupyter notebook.

I also documented my learning process, challenges and insights in my Medium blogpost: 
---

## Technologies
- **SQLite** (DB Browser for SQLite)
- **SQL**
- **strftime, instr, printf** and other SQL functions
- **CSV** for initial dataset
- **Python**
- **Jupyter Notebook**

---

## Project Structure

- **data/** → raw CSV + SQLite database  
- **queries/** → SQL scripts (exploration, cleaning, insights)  
- **results/** → exported results as CSV  
- **visuals/** → charts and graphs for storytelling  
- **README.md** → project documentation
			
---

## Setup
1. Install DB Browser for SQLite https://sqlitebrowser.org
2. Create a new database
---

## Steps (ETL + Analysis)

### 1. **Load the Data**
- Import superstore_sales.db (File -> Import -> Table from CSV file)
- Make sure to tick "Column names in first line", then click OK

### 2. **Explore the Data**
- Check column names, data types and NULL values
```sql
PRAGMA table_info(superstore_sales);
);
```

### 3. **Clean and Transform**
- Fix inconsistent date formats
- Use functions like strftime, instr and substr to extract and transform values

### 4. **Run Queries for Insights**
- Example: Monthly sales trend
```sql
SELECT strftime('%Y-%m', Order_Date_Clean) AS month, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY month
ORDER BY month;
```

### 5. **Furthermore, Visualise Results**
- Export query results to CSV
- Create simple charts in Excel/Google Sheets/PowerBI for visualisation
- I used Google sheets:
Results:
1. Monthly Sales Trend 
visuals -> Monthly Sales Trend (2014-2017).png
Sales show clear seasonality with peaks around holiday months and an overall upward trend over the years.

2. Sales by Category
visuals -> Total Sales by Category.png
Technology products generate the highest revenue, followed by Furniture and Office Supplies, indicating category-wise performance priorities.

3. Sales by Region
visuals -> Total Sales by Region.png
The West region leads in sales, while the South region lags, suggesting regional market differences in demand.

4. Profit vs. Sales by Month
visuals -> Profit vs. Sales by Month.png
High sales months don't always correlate with higher profits, highlighting opportunities to improve cost efficiency and margin management.

---

## Setup Jupyter Notebook
https://jupyter.org/install

