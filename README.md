# Superstore Retail Sales Data Analytics Project

## Project Overview
This project is my first data analytics project using **SQLite**.  
The goal was to practice SQL fundamentals and explore the basics of ETL (Extract, Transform, Load), data cleaning and business insights.

While I had learned database schema design and SQL commands in high school and university, this project helped me **go beyond just queries** and practice real-world **ETL (Extract, Transform, Load)**.

This repository contains SQL queries and results from analysing the Superstore Sales dataset using SQLite.

I also documented my learning journey, mistakes and insights here: https://medium.com/@btshrek/beyond-sql-the-shift-from-coding-to-thinking-like-an-analyst-7eff25510d50

---

## Technologies
- **SQLite** (DB Browser for SQLite)
- **SQL** for data extraction, cleaning and transformations
- **strftime, instr, printf** and other SQL functions
- **CSV** for initial dataset

---

## Project Structure

- **data/** → raw CSV + SQLite database  
- **queries/** → SQL scripts (exploration, cleaning, insights)  
- **results/** → exported results as CSV  
- **visuals/** → charts and graphs for storytelling  
- **README.md** → project documentation

superstore-sql-project/
│
├── data/
│   ├── superstore_sales.csv       # Raw dataset (from Kaggle)
│   └── superstore_sales.db        # SQLite database file
│
├── queries/
│   ├── exploration.sql            # Schema, basic SELECT, data checks
│   ├── cleaning.sql               # Date fixes, transformations
│   ├── insights.sql               # Final business queries
│
├── results/
│   ├── monthly_sales.csv          # Exported query results
│   ├── category_sales.csv
│   └── region_sales.csv
│
├── visuals/
│
├── README.md                      # Project overview


---

## Setup and installation
1. Install DB Browser for SQLite
2. Create a new database
---

## Steps (ETL + Analysis)

### 1. **Load the Data**
- Import superstore_sales.db (File -> Import -> Table from CSV file)
- Make sure to tick "Column names in first line", then click OK

### 2. **Explore the Data**
- Check column names, data types and NULL values
```sql
PRAGMA table_info(superstoer_sales);
);

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

### 5. **Furthermore, Visualise Results**
- Export query results to CSV
- Create simple charts in Excel/Google Sheets/PowerBI for visualisation


## Learnings
- ETL process is crucial before analysis.
- SQL functions like strftime help clean and transform raw data.
- Asking questions first leads to more meaningful queries.

---