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

# SQL UNION, UNION ALL & LIKE Operator (Microsoft SQL Server)

## 📌 Database
- Sales Database

## 📖 Concepts Covered
- UNION
- UNION ALL
- Rules of UNION
- LIKE Operator
- Wildcards in SQL

---

## 📂 Tables Used

### append1
| Column | Data Type |
|--------|-----------|
| C1 | INT |
| C2 | NVARCHAR(255) |
| C3 | INT |

### append2
| Column | Data Type |
|--------|-----------|
| C1 | INT |
| C2 | NVARCHAR(255) |
| C3 | INT |

### Employees_US
| Column | Data Type |
|--------|-----------|
| EmployeeID | INT |
| FirstName | VARCHAR(50) |
| LastName | VARCHAR(50) |
| Department | VARCHAR(50) |

---

## 🔹 SQL Operations

### 1. UNION ALL
- Combines rows from two or more SELECT statements.
- Includes duplicate rows.
- Faster because it does not remove duplicates.

### 2. UNION
- Combines rows from two or more SELECT statements.
- Removes duplicate rows automatically.
- Slightly slower because SQL Server checks for duplicates.

---

## ✅ Rules of UNION

- Number of columns must be the same.
- Data types of corresponding columns must be compatible.
- Column order must be the same.
- Column names in the result are taken from the first SELECT statement.

---

## 🔹 LIKE Operator

The `LIKE` operator is used to search for patterns in text data.

### Wildcards Used

| Wildcard | Meaning | Example |
|----------|---------|---------|
| `%` | Zero or more characters | `'A%'` |
| `_` | Exactly one character | `'A____'` |
| `[ABC]` | Any one of the listed characters | `'[CD]%'` |
| `[A-L]` | Any character in the range | `'[A-L]%'` |
| `[^AEIOU]` | Any character except the listed characters | `'[^AEIOU]%'` |

---

## 🔹 LIKE Practice Queries

- Last name starts with **S**
- First name ends with **a**
- Department contains **Eng**
- Last name has exactly **5 characters**
- First name starts with **C** or **D**
- Last name contains **son**
- Second character is **i**
- Last name starts from **A–L**
- First name does **not** contain **o**
- Last name ends with **a** and has **5 characters**
- Department starts with **Mar** and ends with **ing**
- Third character is **a**
- Last name starts with **Br** or **Bl**
- First name starts with a **vowel**
- First name does **not** start with a consonant
- First name starts with a **consonant**

---

## 🎯 Learning Outcomes

After completing this practice, you will be able to:

- Understand the difference between `UNION` and `UNION ALL`.
- Apply the rules required for `UNION`.
- Use the `LIKE` operator for pattern matching.
- Work with SQL wildcards (`%`, `_`, `[]`, `[^]`).
- Write queries to filter text data efficiently.

---

## 🛠️ Tools Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

---

## 📁 File


`union_unionall_like.sql`

---

**Author:** Karthik T
# SQL CASE Statement in MS SQL Server

## 📌 Overview
The `CASE` statement is used to apply conditional logic in SQL. It works like an `IF...ELSE` statement in programming languages and helps return different values based on specified conditions.

---

# Concepts Covered

- Simple CASE statement
- CASE with ELSE
- CASE without ELSE
- Using CASE in ORDER BY
- Nested CASE statement
- Categorizing data using CASE
- Custom sorting with CASE

---

# Syntax

```sql
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE result3
END
```

---

# Example 1: Categorize Products by Price

### Requirement
Classify products into:

- HIGH
- MEDIUM
- LOW

```sql
SELECT *,
CASE
    WHEN Price >= 500 THEN 'HIGH'
    WHEN Price >= 200 THEN 'MEDIUM'
    ELSE 'LOW'
END AS Price_Category
FROM Products;
```

### Output

| Price | Category |
|--------|----------|
| 650 | HIGH |
| 350 | MEDIUM |
| 120 | LOW |

---

# CASE Without ELSE

If no condition matches, SQL returns **NULL**.

```sql
SELECT *,
CASE
    WHEN Price >= 500 THEN 'HIGH'
    WHEN Price >= 200 THEN 'MEDIUM'
END AS Price_Category
FROM Products;
```

---

# Example 2: Custom Sorting Using CASE

### Requirement

Display categories in this order:

1. Electronics
2. Furniture
3. Accessories

```sql
SELECT *
FROM Products
ORDER BY
CASE
    WHEN Category = 'Electronics' THEN 1
    WHEN Category = 'Furniture' THEN 2
    WHEN Category = 'Accessories' THEN 3
END;
```

---

# Example 3: Nested CASE Statement

### Requirement

Classify products as Premium or Affordable based on both Category and Price.

```sql
SELECT *,
CASE
    WHEN Category = 'Electronics' THEN
        CASE
            WHEN Price >= 300 THEN 'Premium Electronics'
            ELSE 'Affordable Electronics'
        END

    WHEN Category = 'Furniture' THEN
        CASE
            WHEN Price >= 250 THEN 'Premium Furniture'
            ELSE 'Affordable Furniture'
        END

    WHEN Category = 'Accessories' THEN
        CASE
            WHEN Price >= 25 THEN 'Premium Accessories'
            ELSE 'Affordable Accessories'
        END
END AS Product_Group
FROM Products;
```

---

# Key Points

- `CASE` evaluates conditions from top to bottom.
- The first matching condition is returned.
- `ELSE` is optional.
- Without `ELSE`, the result is `NULL` if no condition matches.
- `CASE` can be used in:
  - SELECT
  - ORDER BY
  - WHERE
  - GROUP BY
  - HAVING
  - UPDATE statements

---

# Learning Outcomes

After completing these examples, you will be able to:

- Use `CASE` to implement conditional logic.
- Categorize records dynamically.
- Create custom sorting orders.
- Write nested `CASE` statements.
- Improve query readability without complex logic.

---
# SQL Table Creation, Data Insertion & Data Copying (MS SQL Server)

## 📌 Overview

This module introduces the fundamental SQL operations required to create databases and tables, insert records, understand datatype behavior, and copy data between tables. These commands form the foundation of database management in Microsoft SQL Server.

---

## Concepts Covered

- Creating a database
- Creating a table
- Table columns and datatypes
- Inserting single and multiple records
- Inserting values into selected columns
- Viewing table structure
- Understanding `TINYINT` datatype
- Implicit datatype conversion
- Copying tables
- Copying table structure only
- Copying table structure with data

---

## Key Learnings

### Database Creation
A database acts as a container that stores related tables, views, procedures, and other database objects.

### Table Creation
A table is created by defining column names and assigning appropriate datatypes to each column.

### Data Insertion
Data can be inserted:
- One record at a time
- Multiple records in a single statement
- Into all columns
- Into only selected columns

If values are provided only for selected columns, the remaining columns contain `NULL` (unless default values or constraints are defined).

### Viewing Table Information
SQL Server provides system views that allow developers to inspect a table's structure, including column names, datatypes, nullability, and other metadata.

### Datatype Validation
Every column accepts only values compatible with its datatype.

For example:
- `TINYINT` stores values from **0 to 255**.
- Values outside this range generate an error.
- SQL Server can automatically convert compatible values between datatypes when possible (implicit conversion).

### Copying Tables
SQL Server allows copying:
- The complete table (structure and data)
- Only selected columns
- Only the table structure without records
- Data into an already existing table

These techniques are commonly used for backups, testing, reporting, and data migration.

---

## Important Points

- Always choose appropriate datatypes for each column.
- Specify column names while inserting data whenever possible.
- Ensure inserted values match the datatype of each column.
- Use table-copying techniques to create backups or temporary working tables.
- Copying only the table structure is useful when preparing empty tables for future data.

---

## Applications

These concepts are widely used in:
- Student Management Systems
- Employee Databases
- Sales Management Systems
- Inventory Management
- Data Migration
- Database Backup and Recovery
- ETL (Extract, Transform, Load) Processes

---

## Learning Outcomes

After completing this module, you will be able to:

- Create databases and tables in MS SQL Server.
- Design tables using suitable datatypes.
- Insert single and multiple records efficiently.
- Insert data into specific columns.
- Understand datatype restrictions and conversions.
- View table metadata.
- Copy existing tables with or without data.
- Create empty tables using existing table structures.

---

## Conclusion

Table creation, data insertion, and table copying are among the most fundamental SQL operations. A solid understanding of these concepts helps build efficient, reliable, and scalable databases while preparing you for more advanced topics such as constraints, joins, indexing, stored procedures, and database optimization.

# Conclusion

The `CASE` statement is one of the most useful SQL features for applying business rules directly within queries. It simplifies conditional operations, data categorization, and custom sorting without modifying the original table.

# SQL - Subqueries & Order of Execution

## Concepts Covered
- Subqueries
- IN
- BETWEEN / NOT BETWEEN
- Aggregate Subqueries
- SQL Order of Execution
- GROUP BY
- HAVING

---

## Subqueries
A subquery is a query written inside another query.

### Examples
- Find customers who placed orders within a date range.
- Find customers whose orders are outside a specific date range.
- Find employees whose salary is greater than the average salary.

---

## SQL Order of Execution

1. FROM
2. JOIN
3. WHERE
4. GROUP BY
5. HAVING
6. SELECT
7. DISTINCT
8. ORDER BY
9. TOP

---

## Important Notes
- `WHERE` filters rows before grouping.
- `HAVING` filters groups after `GROUP BY`.
- Use aggregate functions like `AVG()` in `HAVING`.
- Column aliases cannot be used in `HAVING` because aliases are created in the `SELECT` step.

### Correct
```sql
HAVING AVG(Salary) > 55000
```

### Incorrect
```sql
HAVING [Avg Salary] > 55000
```

---

## Learning Outcomes
- Understand subqueries.
- Use `IN` with subqueries.
- Compare values using aggregate subqueries.
- Learn SQL's logical execution order.
- Differentiate between `WHERE` and `HAVING`.
# SQL Constraints in MS SQL Server

## 📌 Overview
Constraints are rules applied to table columns to maintain the accuracy, validity, and integrity of data. They prevent invalid data from being inserted or updated in a table.

---

# Constraints Covered

1. NOT NULL
2. UNIQUE
3. CHECK
4. DEFAULT
5. PRIMARY KEY
6. FOREIGN KEY

---

# 1. NOT NULL Constraint

### Purpose
Ensures that a column cannot contain `NULL` values.

### Key Points
- Mandatory field.
- Prevents inserting empty values.
- Can be added while creating a table or later using `ALTER TABLE`.

### Example
- `ID` cannot be NULL.
- `Age` can also be made NOT NULL using `ALTER TABLE`.

---

# 2. UNIQUE Constraint

### Purpose
Ensures that all values in a column are unique.

### Key Points
- Duplicate values are not allowed.
- Multiple NULL values are allowed in SQL Server.
- Can be created during table creation or added later.

### Example
- Student ID should be unique.
- First Name can also be made unique.

---

# 3. CHECK Constraint

### Purpose
Validates data based on a specified condition.

### Key Points
- Data is inserted only if the condition is satisfied.
- Useful for restricting value ranges.

### Example Conditions
- `Age >= 10`
- `EID > 5`

If the condition is violated, SQL Server returns an error.

---

# 4. DEFAULT Constraint

### Purpose
Automatically assigns a default value when no value is provided.

### Key Points
- Prevents NULL values when appropriate.
- Saves time during data insertion.

### Example Defaults
- `EID = 5`
- `Firstname = 'Rohit'`
- `Age = 25`

---

# 5. PRIMARY KEY Constraint

### Purpose
Uniquely identifies every row in a table.

### Key Points
- Cannot contain NULL values.
- Duplicate values are not allowed.
- Only one Primary Key is allowed per table.
- Can be a single column or multiple columns (Composite Primary Key).

### Composite Primary Key
A combination of two or more columns used to uniquely identify each record.

Example:
- `(SID, Age)`

---

# 6. FOREIGN KEY Constraint

### Purpose
Creates a relationship between two tables.

### Key Points
- References the Primary Key of another table.
- Prevents inserting values that do not exist in the parent table.
- NULL values are allowed unless restricted.

### Example
Parent Table:
- Student IDs

Child Table:
- Student Courses

Only IDs present in the parent table can be inserted into the child table.

---

# Summary Table

| Constraint | Purpose | Allows NULL | Allows Duplicate |
|------------|---------|------------|------------------|
| NOT NULL | Prevent NULL values | ❌ No | ✅ Yes |
| UNIQUE | Prevent duplicate values | ✅ Yes (multiple in SQL Server) | ❌ No |
| CHECK | Validates data based on a condition | Depends | Depends |
| DEFAULT | Assigns default value | Yes (if no default used) | Yes |
| PRIMARY KEY | Unique identifier | ❌ No | ❌ No |
| FOREIGN KEY | Maintains relationship between tables | ✅ Yes | ✅ Yes (if value exists in parent table) |

---

# Learning Outcomes

After completing this topic, you will be able to:

- Understand the purpose of SQL Constraints.
- Apply NOT NULL to mandatory columns.
- Enforce uniqueness using UNIQUE.
- Validate data using CHECK.
- Assign automatic values using DEFAULT.
- Create Primary Keys and Composite Primary Keys.
- Build relationships between tables using Foreign Keys.
- Improve database consistency and data integrity.

---

## Conclusion

SQL Constraints are essential for maintaining data integrity and preventing invalid data from entering the database. Proper use of constraints ensures reliable, consistent, and well-structured databases.
# SQL Window Functions – ROW_NUMBER(), RANK(), and DENSE_RANK()

## 📌 Objective
Learn how to assign rankings to rows using SQL Window Functions.

---

## 📚 Concepts Covered
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- OVER() clause
- ORDER BY inside window functions
- Handling duplicate values (ties)

---

## 🗂 Dataset
Table: **Students**

Columns:
- `student_name`
- `subject`
- `marks`

Each student has marks for three subjects.

---

## 1️⃣ ROW_NUMBER()

### Definition
Assigns a unique sequential number to every row based on the specified order.

### Syntax
```sql
ROW_NUMBER() OVER(ORDER BY column_name)
```

### Example
```sql
SELECT *,
ROW_NUMBER() OVER(ORDER BY marks DESC) AS Row_Number
FROM Students;
```

### Key Points
- Every row gets a unique number.
- No duplicate row numbers.
- If two rows have the same marks, numbering is still different.
- Tie order is determined by SQL Server unless another column is added to `ORDER BY`.

---

## 2️⃣ RANK()

### Definition
Assigns the same rank to rows with equal values, but skips the next rank(s).

### Syntax
```sql
RANK() OVER(ORDER BY column_name)
```

### Example
```sql
SELECT *,
RANK() OVER(ORDER BY marks DESC) AS Rank
FROM Students;
```

### Example Ranking

| Marks | Rank |
|-------:|-----:|
| 95 | 1 |
| 90 | 2 |
| 90 | 2 |
| 85 | 4 |

Notice that **Rank 3 is skipped**.

---

## 3️⃣ DENSE_RANK()

### Definition
Assigns the same rank to duplicate values without skipping any ranks.

### Syntax
```sql
DENSE_RANK() OVER(ORDER BY column_name)
```

### Example
```sql
SELECT *,
DENSE_RANK() OVER(ORDER BY marks DESC) AS Dense_Rank
FROM Students;
```

### Example Ranking

| Marks | Dense Rank |
|-------:|-----------:|
| 95 | 1 |
| 90 | 2 |
| 90 | 2 |
| 85 | 3 |

Notice that **no rank is skipped**.

---

# Comparison

| Function | Duplicate Values | Skips Ranks | Unique Number |
|----------|------------------|-------------|---------------|
| ROW_NUMBER() | ❌ No | ❌ No | ✅ Yes |
| RANK() | ✅ Yes | ✅ Yes | ❌ No |
| DENSE_RANK() | ✅ Yes | ❌ No | ❌ No |

---

## When to Use

### ROW_NUMBER()
Use when every row must have a unique sequence number.

Examples:
- Serial numbers
- Pagination
- Selecting the first record

---

### RANK()
Use when ties should share the same rank and skipped ranks are acceptable.

Examples:
- Sports rankings
- Competition results

---

### DENSE_RANK()
Use when ties should share the same rank without leaving gaps.

Examples:
- Student rankings
- Employee performance rankings

---

## Learning Outcomes
After completing this exercise, you will be able to:
- Understand SQL Window Functions.
- Use `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()`.
- Differentiate between the three ranking functions.
- Handle duplicate values while ranking data.
- Apply ranking functions in real-world SQL queries.

---

## Summary

- **ROW_NUMBER()** → Every row gets a unique number.
- **RANK()** → Same rank for ties; next rank is skipped.
- **DENSE_RANK()** → Same rank for ties; no ranks are skipped.
- All three functions require the `OVER()` clause with `ORDER BY`.
- # SQL Assignments

## Overview
This repository contains solutions to SQL practice assignments covering essential SQL concepts using Microsoft SQL Server.

## Topics Covered
- Database & Table Creation
- INSERT Statements
- Aggregate Functions (`SUM`, `COUNT`, `AVG`)
- `GROUP BY` & `HAVING`
- Date Functions (`YEAR`, `MONTH`)
- Subqueries
- Pattern Matching (`LIKE`)
- Joins (`INNER JOIN`, `LEFT JOIN`)
- Sorting (`ORDER BY`)

## Assignments

### Assignment 1
Employee Sales Analysis
- Total sales by department
- Sales count by employee
- Average sales by department
- Employees with multiple sales
- Monthly sales summary

### Assignment 2
Subqueries
- Salary above average
- Employees hired after the oldest employee
- Highest-paid employee
- Employees in the same department
- Departments with highest average salary

### Assignment 3
Pattern Matching
- Names starting with 'J'
- Last names ending with 'n'
- Emails containing "john"
- Five-character first names
- Last names with 'a' as the second character

### Assignment 4
Joins
- Employees with department names
- All departments with employees
- Employees without a matching department
- Employees in Jane Doe's department
- Department with the highest total salary

## Learning Outcomes
- Write efficient SQL queries.
- Use aggregate functions and grouping.
- Apply subqueries for data filtering.
- Perform different types of joins.
- Retrieve data using pattern matching.

# SQL Server – Stored Procedures, Recursive CTEs, Views & Indexes

## 📌 Overview
This project demonstrates important SQL Server concepts including **Stored Procedures**, **Recursive Common Table Expressions (CTEs)**, **Views**, and **Indexes** using an `Employees` table.

---

## 📚 Concepts Covered

### 1. Stored Procedures
- Creating stored procedures
- Executing stored procedures
- Modifying procedures using `ALTER PROCEDURE`
- Reusable SQL code

### 2. Recursive CTE (Common Table Expression)
- Anchor Query
- Recursive Query
- Number generation using recursion
- Factorial calculation

### 3. Views
- Creating views
- Querying data through views
- Updating data using views
- Dropping views

### 4. Indexes
- Single-column indexes
- Composite indexes
- Improving query performance
- Dropping indexes

---

## 🛠 SQL Commands Used
- `CREATE DATABASE`
- `CREATE TABLE`
- `INSERT INTO`
- `SELECT`
- `CREATE PROCEDURE`
- `ALTER PROCEDURE`
- `WITH` (Recursive CTE)
- `CREATE VIEW`
- `UPDATE`
- `CREATE INDEX`
- `DROP VIEW`
- `DROP INDEX`

---

## 🎯 Learning Outcomes
After completing this project, you will be able to:
- Create and execute stored procedures.
- Understand and implement Recursive CTEs.
- Create and manage SQL Views.
- Improve query performance using Indexes.
- Work with essential SQL Server database objects.

# SQL – Finding the Nth Highest Salary

## 📌 Objective

Learn different SQL techniques to find the **2nd, 3rd, or Nth highest salary** from the `Employees` table.

---

## 📚 Concepts Covered

* `MAX()` function
* Subqueries
* `TOP` keyword
* `DISTINCT`
* Common Table Expressions (CTE)
* Window Functions
* `DENSE_RANK()`
* Nested Queries

---

## 🛠 Methods Used

### 1. Subquery with `MAX()`

Uses nested `MAX()` functions to find the next highest salary.

**Best for:** 2nd or 3rd highest salary.

---

### 2. `TOP` + `DISTINCT`

Fetches the top N distinct salaries and then selects the lowest value among them.

**Best for:** Small values of N.

---

### 3. Common Table Expression (CTE) + `DENSE_RANK()`

Assigns a rank to each distinct salary using `DENSE_RANK()` and retrieves the required rank.

**Best for:** Any Nth highest salary.

---

### 4. Subquery + `DENSE_RANK()`

Uses a derived table instead of a CTE to rank salaries and filter the desired rank.

**Best for:** Compact queries without creating a CTE.

---

## 📖 Key SQL Functions

| Function       | Purpose                                         |
| -------------- | ----------------------------------------------- |
| `MAX()`        | Returns the highest value                       |
| `TOP`          | Limits the number of rows returned              |
| `DISTINCT`     | Removes duplicate salary values                 |
| `DENSE_RANK()` | Assigns consecutive ranks without gaps          |
| `ORDER BY`     | Sorts salaries in ascending or descending order |
| `WITH (CTE)`   | Creates a temporary result set                  |

---

## 📊 Learning Outcomes

After completing this exercise, you will be able to:

* Find the **2nd highest salary** using multiple SQL techniques.
* Find the **3rd highest salary** using different approaches.
* Extend the logic to retrieve the **Nth highest salary**.
* Understand the difference between traditional subqueries and window functions.
* Use `DENSE_RANK()` to handle duplicate salary values correctly.
* Improve SQL problem-solving skills commonly asked in interviews.

---

## 💡 Interview Tip

For finding the **Nth highest salary**, the most preferred approach in interviews is using **`DENSE_RANK()` with a CTE or subquery**, as it is simple, scalable, and handles duplicate salaries efficiently.
# SQL Self Join – Reporting Structure

## 📌 Concept

This example demonstrates how to use a **Self Join** to retrieve the relationship between employees and their managers from the same table.

## 🗂️ Table

**ReportingStructure**

| Column       | Description                          |
| ------------ | ------------------------------------ |
| EmployeeID   | Unique ID of the employee            |
| EmployeeName | Name of the employee                 |
| ManagerID    | EmployeeID of the employee's manager |

## 🎯 Objective

Display:

* **Manager Name**
* **Reportee (Employee) Name**

## 💡 SQL Concept Used

* Self Join
* Table Aliases (`a`, `b`)
* INNER JOIN

## ✅ Query

```sql
SELECT
    a.EmployeeName AS Manager,
    b.EmployeeName AS Reportee
FROM ReportingStructure a
INNER JOIN ReportingStructure b
ON a.EmployeeID = b.ManagerID;
```

## 🔍 How It Works

* `a` represents the **Manager**.
* `b` represents the **Employee (Reportee)**.
* `b.ManagerID` stores the manager's `EmployeeID`.
* Matching `a.EmployeeID = b.ManagerID` links each employee to their manager.

## 📊 Expected Output

| Manager     | Reportee     |
| ----------- | ------------ |
| Alice Smith | Bob Johnson  |
| Alice Smith | Carol White  |
| Bob Johnson | David Brown  |
| Bob Johnson | Eve Davis    |
| Carol White | Frank Miller |

## 📚 Learning Outcomes

* Understand the purpose of a **Self Join**.
* Learn how to join a table with itself using aliases.
* Retrieve hierarchical data such as **Manager–Employee** relationships.
* Practice using **INNER JOIN** with the same table.
* # 🗑️ SQL - Delete Duplicate Records

## 📌 Project Overview
This project demonstrates two common methods to identify and remove duplicate records from a SQL Server table.

The sample table contains duplicate employee records, and both methods ensure that only unique records remain.

---

## 📂 Table Structure

```sql
CREATE TABLE EmployeeRecords (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);
```

---

## 📥 Sample Data

The table contains duplicate rows for:

- EmployeeID = 2 (Bob Johnson)
- EmployeeID = 4 (David Brown)

---

## 🔹 Method 1: Delete Duplicates Using CTE and ROW_NUMBER()

### Concept
- `ROW_NUMBER()` assigns a sequential number to each duplicate group.
- The first occurrence gets Row Number = 1.
- Duplicate rows get Row Number > 1.
- Delete all rows where Row Number > 1.

### SQL Query

```sql
WITH cte AS
(
    SELECT *,
           ROW_NUMBER() OVER
           (
               PARTITION BY EmployeeID, EmployeeName, ManagerID
               ORDER BY EmployeeID
           ) AS RowNo
    FROM EmployeeRecords
)

DELETE FROM cte
WHERE RowNo > 1;
```

### Advantages
- Fast and efficient.
- Deletes duplicates directly.
- No need to create another table.

---

## 🔹 Method 2: Using DISTINCT

### Concept
- Copy unique records into a temporary table.
- Remove all existing records.
- Insert only unique records back into the original table.

### SQL Query

```sql
SELECT DISTINCT *
INTO #TempEmployee
FROM EmployeeRecords;

TRUNCATE TABLE EmployeeRecords;

INSERT INTO EmployeeRecords
SELECT *
FROM #TempEmployee;

SELECT *
FROM #TempEmployee;
```

### Advantages
- Very simple to understand.
- Good for small tables.
- Easy to implement.

### Limitations
- Requires additional storage.
- Slightly slower for large datasets.

---

## 📊 Expected Output

Before deleting duplicates:

| EmployeeID | EmployeeName | ManagerID |
|------------|--------------|-----------|
| 1 | Alice Smith | NULL |
| 2 | Bob Johnson | 1 |
| 2 | Bob Johnson | 1 |
| 3 | Carol White | 1 |
| 4 | David Brown | 2 |
| 4 | David Brown | 2 |
| 5 | Eve Davis | 2 |
| 6 | Frank Miller | 3 |

After removing duplicates:

| EmployeeID | EmployeeName | ManagerID |
|------------|--------------|-----------|
| 1 | Alice Smith | NULL |
| 2 | Bob Johnson | 1 |
| 3 | Carol White | 1 |
| 4 | David Brown | 2 |
| 5 | Eve Davis | 2 |
| 6 | Frank Miller | 3 |

---

## 📚 SQL Concepts Used

- CREATE TABLE
- INSERT INTO
- SELECT
- ORDER BY
- Common Table Expression (CTE)
- ROW_NUMBER()
- PARTITION BY
- DELETE
- DISTINCT
- TRUNCATE TABLE
- Temporary Tables

---

## 🎯 Learning Outcomes

After completing this project, you will understand:

- How duplicate records occur in SQL tables.
- How to identify duplicates using `ROW_NUMBER()`.
- How to remove duplicates using a CTE.
- How to remove duplicates using `DISTINCT`.
- The advantages and limitations of each approach.

---

## 🛠️ Database

- Microsoft SQL Server (MSSQL)



