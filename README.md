
# 🧠 SQL Data Analysis Project using SQLite

## 📘 Overview

This project demonstrates how to perform real-world data analysis using **SQL in SQLite**. 
We used a large CSV dataset containing user behavior and profile details, loaded it into SQLite using **DB Browser for SQLite**, and executed powerful SQL commands to extract insights.

---

## 🧰 Tools Used

- **SQLite** (via DB Browser for SQLite)
- **SQL** (Standard syntax: SELECT, JOIN, GROUP BY, subqueries, views, indexes)
- **Python (optional, for preloading and testing)**

---

## 📊 Dataset Overview

- **Source File:** 6M-0K-99K.users.dataset.public.csv
- **Imported Table:** `users_data`
- **Sample Columns:**
  - `identifierHash` (User ID)
  - `country`, `countryCode`, `language`
  - `productsSold`, `socialNbFollowers`, `productsPassRate`
  - `hasAndroidApp`, `daysSinceLastLogin`, `seniorityAsYears`

---

## 🔍 SQL Tasks Performed

### ✅ A. Basic Queries
- `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY` used for user filtering and aggregation

### ✅ B. Joins
- Created a dummy `countries` table and performed `INNER JOIN` with user data

### ✅ C. Subqueries
- Extracted users whose `productsPassRate` is higher than the average

### ✅ D. Aggregates
- Used `SUM`, `AVG` to analyze total followers and average follows by language

### ✅ E. Views
- Created a view `high_engagement_users` for users with >100 followers and >100 products sold

### ✅ F. Index Optimization
- Created indexes on `country`, `productsSold`, and `language` columns

---

## 📂 Files Delivered

- [`SQL_Project_Queries.sql`](./SQL_Project_Queries.sql) – All SQL queries written for analysis
- `users_data.csv` – Source dataset (not included here for size)
- `README.md` – This file 📝

---

## ✨ How to Use

1. Open **DB Browser for SQLite**
2. Create a new DB and import the CSV (`users_data` table)
3. Open `SQL_Project_Queries.sql` in the **Execute SQL** tab
4. Run queries individually and analyze results
5. Use the `Browse Data` tab or screenshots for reports

---

## 📜 License

This project is open-sourced under the **MIT License**.
