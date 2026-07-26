create database [SQL assignmnets]

--Step 1) Create Table
CREATE TABLE EmployeeSales (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    Department VARCHAR(50),
    SaleAmount DECIMAL(10, 2),
    SaleDate DATE
);

--Step 2) Insert records into the table
INSERT INTO EmployeeSales (SaleID, EmployeeID, Department, SaleAmount, SaleDate)
VALUES 
(1, 101, 'Electronics', 500.00, '2023-08-01'),
(2, 102, 'Electronics', 300.00, '2023-08-03'),
(3, 101, 'Furniture', 150.00, '2023-08-02'),
(4, 103, 'Electronics', 250.00, '2023-08-04'),
(5, 104, 'Furniture', 200.00, '2023-08-02'),
(6, 101, 'Furniture', 450.00, '2023-08-05'),
(7, 102, 'Electronics', 700.00, '2023-08-05'),
(8, 103, 'Furniture', 100.00, '2023-08-06');


----***********************************************************************************
----Column Definitions

--SaleID (INT PRIMARY KEY): Unique identifier for each sale.
--EmployeeID (INT): Identifier for the employee who made the sale.
--Department (VARCHAR(50)): Name of the department where the sale was made.
--SaleAmount (DECIMAL(10, 2)): Total amount of the sale.
--SaleDate (DATE): Date when the sale occurred.
----***********************************************************************************
select * from EmployeeSales
--Questions for this assignment
--1) Write a query to calculate the total sales amount for each department in the EmployeeSales table.
select sum(saleamount) as [total amount],department from EmployeeSales group by department

--2) Write a query to count the number of sales made by each employee.
select count(saleid) as [no. of sales],employeeid from EmployeeSales group by EmployeeID

--3) Write a query to calculate the average sale amount for each department.
select avg(saleamount) as [avg amount],department from EmployeeSales group by Department

--4) Write a query to find the total sales amount for each employee, but only include employees who have made more than one sale.
select * from EmployeeSales
select sum(saleamount) [total sale amount],employeeid [no. of sales] from EmployeeSales group by EmployeeID having count(saleid)>1

--5) Write a query to find the total sales for each month in 2023.
select year(saledate) as [year],month(saledate) as [month],sum(SaleAmount) [total sales] from EmployeeSales 
where year(saledate) = 2023 group by year(saledate),month(saledate) order by month

--assignment 2
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

select * from Employees
--Questions for this assignment
--1. Write a SQL query to find the names of employees who have a salary higher than the average salary of all employees.
select firstname,lastname from Employees where salary > (
select avg(salary) from Employees)

--2. Write a SQL query to list the employee names and their departments for employees who were hired after the oldest employee in the company.
select firstname,lastname,DepartmentID from Employees where hiredate>(
select min(hiredate) from employees)

--3.Write a SQL query to find the details of the employee(s) with the highest salary.
select * from employees where salary=(
select max(salary) from employees)

--4.Write a SQL query to find the names of employees who work in the same department as 'John Smith'.
select firstname,lastname from employees where departmentid = (select departmentid from employees where firstname = 'john' and lastname ='smith')

--5. Write a SQL query to find the names of employees who do not belong to the department with the highest average salary.
select firstname,lastname from employees where departmentid not in ( select top 1 departmentid from employees group by departmentid order by avg(salary) desc)

--assignment 3
--Questions for this assignment
select * from employees
--1. Write a SQL query to find the names of employees whose first names start with the letter 'J'.
select firstname,lastname from Employees where firstname like 'j%'

--2. Write a SQL query to find the names of employees whose last names end with the letter 'n'.
select firstname,lastname from Employees where lastname like '%n'

--3. Write a SQL query to find the email addresses of employees that contain the word "john".
select email from employees where email like'%john%'

--4. Write a SQL query to find the names of employees whose first names have exactly 5 characters.
select firstname,lastname from Employees where firstname like '_____'

--5. Write a SQL query to find the names of employees whose last names contain the letter 'a' as the second character.
select firstname,lastname from Employees where lastname like '_a%'

--assignment 4
-- Creating the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);

-- Inserting data into the Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');

--Questions for this assignment
select * from employees
select * from departments
--1. Write a SQL query to list the names of employees along with the names of the departments they work in.
select firstname,lastname,departmentname from employees e inner join departments d on e.DepartmentID = d.DepartmentID

--2. Write a SQL query to list all the departments and the employees working in them, including departments with no employees.
select departmentname,firstname,lastname from employees e left join departments d on d.departmentid = e.DepartmentID 

--3. Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).
select firstname,lastname,d.departmentid from Employees e left join Departments d on e.DepartmentID = d.DepartmentID where d.DepartmentID is null

--4. Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.
select firstname,lastname from employees where departmentid = (select departmentid from employees where firstname = 'jane' and lastname = 'doe')
--or
SELECT E2.FirstName, E2.LastName

FROM Employees E1

JOIN Employees E2

ON E1.DepartmentID = E2.DepartmentID

WHERE E1.FirstName = 'Jane' AND E1.LastName = 'Doe'

AND E2.EmployeeID <> E1.EmployeeID;
--5. Write a SQL query to find the department with the highest total salary paid to its employees.
select top 1 d.departmentname from employees e inner join departments d on d.DepartmentID = e.DepartmentID group by d.DepartmentName order by sum(e.salary) desc

