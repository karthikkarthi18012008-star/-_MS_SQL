
--stored procedure

create database testDB

use testdb

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

select * from employees

create procedure sp_test
as
begin
    select * from employees
end

sp_test
------------------------------------
create procedure sp_test_1
as
begin
    select firstname,lastname,salary from employees
end

sp_test_1
------------------------------------
alter proc sp_test_1
as 
begin
    select firstname,lastname,salary from employees where salary > 70000
end

sp_test_1

--Recursive CTE


--displaying numbers based on condition
with [r cte] as (
--anchore query
select 1 as n

union all

--recursive query
select n+1 from [r cte] where n<=4
)

select * from [r cte]

--Factorial of a given number (5)
with [r cte_1] as (
--anchore query
select 1 as n

union all

--recursive query
select n+1 from [r cte_1] where n<=4
)
select exp(sum(log(n))) from [r cte_1]

--views in sql
select * from Employees

select * into emp_bkp from Employees

select * from emp_bkp

create view [view 1] as (
select * from emp_bkp
)

select * from [view 1]

--**
update [view 1] 
set employeeid = 100

Create view View_2 as (
select EmployeeID,FirstName,LastName,Email,DepartmentID,HireDate from emp_bkp
)

select * from View_2
drop view View_2
select * from emp_bkp

--indexes
create index ix_1 on employees(salary desc)


create index IX_2 on dbo.employees(firstname,lastname)

select * from employees

drop index dbo.employees.IX_1

