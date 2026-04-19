# SQLite Analytics — Coding Challenge
### ISM3232 | Business Analytics with SQL

## Overview
This project uses SQL to answer four business questions against a provided SQLite database (`bais_sqlite_lab.db`). Queries cover customer spend analysis, product category revenue, employee compensation comparisons, and customer loyalty distribution by city.

## Tools Used
- **VS Code** with the **SQLTools extension** (SQLite driver)
- Queries run and validated directly against `bais_sqlite_lab.db`

## Files
| File | Description |
|---|---|
| `challenge.sql` | All SQL queries for Tasks 1–4 including variants |
| `INSIGHTS.md` | Business insights derived from query results |
| `README.md` | Project overview and setup instructions |
| `bais_sqlite_lab.db` | SQLite database (provided) |

## Database Schema
| Table | Key Columns |
|---|---|
| `customers` | id, first_name, last_name, city, loyalty_level |
| `orders` | id, customer_id, order_date, status |
| `order_items` | id, order_id, product_id, quantity, unit_price |
| `products` | id, name, category, price, active |
| `employees` | id, first_name, last_name, department_id, salary |
| `departments` | id, name |

## Tasks Summary
- **Task 1** — Top 5 customers by total lifetime spend
- **Task 2** — Total revenue by product category (+ Delivered orders variant)
- **Task 3** — Employees earning above their department average
- **Task 4** — Cities ranked by Gold loyalty customers (+ full loyalty distribution)

## How to Run
1. Open the project folder in VS Code
2. Connect to `bais_sqlite_lab.db` via SQLTools
3. Open `challenge.sql`
4. Highlight any query and press `Cmd+E` to run it