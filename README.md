# 👨‍💼 Employee Details SQL

## 📌 Overview

This project demonstrates basic SQL operations using an employee database. It covers database creation, table creation, data insertion, and basic data retrieval queries.

## 🛠️ Technologies

* Microsoft SQL Server
* SQL

## 📚 Concepts Covered

* `CREATE DATABASE`
* `USE`
* `CREATE TABLE`
* `PRIMARY KEY`
* `INSERT INTO`
* `SELECT`
* Selecting specific columns
* `CONCAT()`
* Column Alias (`AS`)

## 📂 Table Structure

* EmployeeID
* FirstName
* LastName
* Department
* Salary
* HireDate

## 🎯 Learning Outcomes

* Create and use databases
* Design tables
* Insert records
* Retrieve data using `SELECT`
* Select specific columns
* Combine columns using `CONCAT()`

## 🚀 Skills Practiced

* SQL Basics
* Database Management
* Data Retrieval
* String Functions

# 🗄️ SQL Filtering & Sorting

## 📌 Overview

This project demonstrates basic SQL queries for retrieving, filtering, sorting, and managing employee data using Microsoft SQL Server.

## 🛠️ Technologies

* Microsoft SQL Server
* SQL

## 📚 Concepts Covered

* `CREATE TABLE`
* `INSERT INTO`
* `SELECT`
* `DISTINCT`
* Temporary Tables (`#Temp`, `##Temp`)
* `WHERE`
* `ORDER BY`
* `AND`, `OR`, `NOT`
* `BETWEEN`
* `IN`
* `NOT IN`

## 🎯 Learning Outcomes

* Create and populate tables
* Retrieve unique records
* Work with temporary tables
* Filter data using conditions
* Sort data in ascending and descending order
* Use logical and comparison operators

## 🚀 Skills Practiced

* Data Retrieval
* Data Filtering
* Data Sorting
* Temporary Tables
* SQL Query Writing
# SQL DML Commands

## Concepts Covered
- INSERT
- NULL
- IS NULL / IS NOT NULL
- UPDATE
- Temporary Tables
- DELETE
- TRUNCATE
- DROP

---

## INSERT
- Adds new records into a table.
- Can insert all columns or selected columns.

---

## NULL
- Represents a missing or unknown value.
- Compare using `IS NULL` or `IS NOT NULL`, not `=`.

---

## UPDATE
- Modifies existing records.
- Use `WHERE` to update specific rows.
- Without `WHERE`, all rows are updated.

---

## Temporary Table
- Created using `SELECT INTO`.
- Exists only for the current session.

---

## DELETE
- Removes selected rows.
- Without `WHERE`, all rows are deleted.
- Table structure remains.

---

## TRUNCATE
- Removes all rows from a table.
- Faster than `DELETE`.
- Table structure remains.

---

## DROP
- Removes the entire table and its data permanently.

---

## DELETE vs TRUNCATE vs DROP

| Command | Removes Data | Removes Table | WHERE |
|----------|-------------|---------------|--------|
| DELETE | ✅ | ❌ | ✅ |
| TRUNCATE | ✅ (All) | ❌ | ❌ |
| DROP | ✅ | ✅ | ❌ |

---

## Learning Outcomes
- Insert records into a table.
- Handle NULL values correctly.
- Update existing records.
- Work with temporary tables.
- Understand the difference between DELETE, TRUNCATE, and DROP.
- # SQL Aggregate Functions - MAX & GROUP BY

## Concepts Covered
- MAX()
- GROUP BY
- Aggregate Functions
- Aliases (`AS`)

---

## MAX()
- Returns the highest value in a column.
- Works with numeric, date, and text columns.

**Examples:**
- Maximum Total Amount
- Latest Sale Date
- Maximum Payment Method (alphabetically)

---

## GROUP BY
- Groups rows with the same values.
- Commonly used with aggregate functions like `MAX()`, `MIN()`, `SUM()`, `AVG()`, and `COUNT()`.

---

## MAX() with GROUP BY
- Find the maximum quantity for each product.
- Find the maximum sales amount for each sale date.

---

## Learning Outcomes
- Find the maximum value in a column using `MAX()`.
- Group records using `GROUP BY`.
- Combine aggregate functions with grouped data.
- Use column aliases to improve query readability.s

