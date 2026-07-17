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
- # SQL Aggregate Functions - MIN, SUM, AVG, COUNT, GROUP BY, HAVING

## Concepts Covered
- MIN()
- SUM()
- AVG()
- COUNT()
- GROUP BY
- HAVING
- ORDER BY

---

## MIN()
- Returns the smallest value in a column.
- Works with numbers, dates, and text.
- Can be combined with `GROUP BY`.

---

## SUM()
- Returns the total of numeric values.
- Commonly used with `GROUP BY`.

---

## AVG()
- Returns the average of numeric values.
- Ignores `NULL` values.

---

## COUNT()
- `COUNT(*)` → Counts all rows.
- `COUNT(column)` → Counts only non-NULL values.
- `COUNT(DISTINCT column)` → Counts unique values.

---

## GROUP BY
- Groups rows having the same values.
- Used with aggregate functions like `MIN()`, `SUM()`, `AVG()`, and `COUNT()`.

---

## HAVING
- Filters grouped results.
- Used after `GROUP BY`.
- Supports aggregate functions.

---

## ORDER BY
- Sorts the result set.
- `ASC` → Ascending (default)
- `DESC` → Descending

---

## WHERE vs HAVING

| WHERE | HAVING |
|--------|---------|
| Filters rows | Filters groups |
| Before `GROUP BY` | After `GROUP BY` |
| Cannot use aggregate functions | Can use aggregate functions |

---

## Learning Outcomes
- Find minimum values using `MIN()`.
- Calculate totals with `SUM()`.
- Find averages using `AVG()`.
- Count records using `COUNT()`.
- Group data with `GROUP BY`.
- Filter grouped data using `HAVING`.
- Sort results using `ORDER BY`.
- Understand the difference between `WHERE` and `HAVING`.
# SQL Joins Practice (Microsoft SQL Server)

## 📌 Database
- Sales Database

## 📖 Concepts Covered
- INNER JOIN
- LEFT JOIN (LEFT OUTER JOIN)
- RIGHT JOIN (RIGHT OUTER JOIN)
- FULL OUTER JOIN
- LEFT ANTI JOIN
- RIGHT ANTI JOIN
- SELF JOIN

## 📂 Tables Used

### Table1
| Column | Data Type |
|--------|-----------|
| C1 | INT |
| C2 | NVARCHAR(MAX) |

### Table2
| Column | Data Type |
|--------|-----------|
| C1 | INT |
| C3 | NVARCHAR(MAX) |

## 🔹 SQL Operations

### 1. Create Tables
- Created `table1`
- Created `table2`

### 2. Insert Data
- Added sample records into both tables.
- Included duplicate values and `NULL` values to understand join behavior.

### 3. INNER JOIN
Returns only the matching rows from both tables.

### 4. LEFT JOIN
Returns all rows from the left table and matching rows from the right table. If there is no match, `NULL` values are returned for the right table.

### 5. RIGHT JOIN
Returns all rows from the right table and matching rows from the left table. If there is no match, `NULL` values are returned for the left table.

### 6. LEFT ANTI JOIN
Returns rows that exist only in the left table.

```sql
LEFT JOIN ...
WHERE b.C1 IS NULL;
```

### 7. RIGHT ANTI JOIN
Returns rows that exist only in the right table.

```sql
RIGHT JOIN ...
WHERE a.C1 IS NULL;
```

### 8. FULL OUTER JOIN
Returns all rows from both tables, whether they match or not.

### 9. SELF JOIN
Joins a table with itself using aliases.

## 🎯 Learning Outcomes
After completing this practice, you will be able to:

- Understand different types of SQL joins.
- Compare INNER, LEFT, RIGHT, and FULL joins.
- Find unmatched records using Anti Joins.
- Perform Self Joins using table aliases.
- Work with duplicate and NULL values in joins.

## 🛠️ Tools Used
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

