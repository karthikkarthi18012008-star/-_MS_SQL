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
