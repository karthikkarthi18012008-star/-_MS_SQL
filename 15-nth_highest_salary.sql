create database [advanced sql questions]

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(100),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, EmployeeName, Salary)
VALUES
(1, 'Alice Smith', 70000.00),
(2, 'Bob Johnson', 85000.00),
(3, 'Carol White', 95000.00),
(4, 'David Brown', 60000.00),
(5, 'Eve Davis', 75000.00),
(6, 'Frank Miller', 90000.00),
(7, 'Grace Lee', 80000.00),
(8, 'Hannah Clark', 62000.00),
(9, 'Ivy Harris', 74000.00),
(10, 'Jack Lewis', 98000.00);

select * from Employees

select salary from Employees

----2nd highest salary
--sub query

select max(salary) from employees where salary < (
select max(salary) from employees)

select top 1 salary [2nd highest salary] from (
select distinct top 2 salary from employees order by salary desc) x
order by salary asc

--cte
with cte as (
select *,dense_rank() over(order by salary desc) [DR] from employees
)
select salary [2nd highest salary] from cte where dr = 2

--subquery with cte
select salary [2nd highest salary] from (select *,DENSE_RANK() 
over(order by salary desc) [dr] from employees) x where dr = 2

--3rd highest salary
--1.sub query
select top 1 salary from(
select distinct top 3 salary  from employees order by salary desc) y 
order by salary asc

select max(salary) [3rd highest salary] from employees where salary < (
select max(salary) from employees where salary < (
select max(salary) from employees))

--cte

with cte as (
select *,dense_rank() over(order by salary desc) [DR] from employees
)
select salary [2nd highest salary] from cte where dr = 3

--subquery with dense_rank()

select salary [3rd highest salary] from (select *,DENSE_RANK() 
over(order by salary desc) [dr] from employees) x where dr = 3

--follow the above order if you want to fetch the nth highest salaries 