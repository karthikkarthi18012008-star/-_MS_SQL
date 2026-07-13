CREATE TABLE EmployeeRecords (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    Salary DECIMAL(10, 2)
);


INSERT INTO EmployeeRecords (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
(1, 'John', 'Miller', 'HR', 60000),
(2, 'Jane', 'Smith', 'Finance', 75000),
(3, 'John', 'Miller', 'HR', 60000),
(4, 'Emily', 'Davis', 'IT', 85000),
(5, 'Michael', 'Brown', 'Finance', 75000),
(6, 'Jane', 'Smith', 'Finance', 75000);

select * from EmployeeRecords

select distinct firstname from EmployeeRecords

select distinct lastname from EmployeeRecords


select distinct Salary from EmployeeRecords

select distinct * from EmployeeRecords

--temparary table

select * into #temp1
from EmployeeRecords

select * from #temp1


select * into ##temp2
from EmployeeRecords

select * from ##temp2

--where clause
select * from EmployeeRecords where EmployeeID = 2

select * from EmployeeRecords where salary >=75000.00

select firstname,lastname,department,salary
from EmployeeRecords where salary < 75000.00


select distinct firstname,lastname,department,salary
from EmployeeRecords where salary < 75000.00

--order by clause

select * from [dbo].[Employees]
order by salary

select * from [dbo].[Employees]
order by salary desc

select * from [dbo].[Employees]
order by firstname asc,salary desc

select * from [dbo].[Employees]
order by department asc,salary desc

--and & or

select * from EmployeeRecords
where lastname = 'miller' and employeeid = 3


select * from EmployeeRecords
where lastname = 'miller' or employeeid = '3'


select * from EmployeeRecords
where (lastname = 'miller' and employeeid = 3) and salary = 60000.00

--not, between and in 

select * from EmployeeRecords
where not lastname = 'miller' or not employeeid = '3'

select * from EmployeeRecords
where not lastname = 'miller' or not employeeid = '3'


select * from EmployeeRecords
where salary between 75000.00 and 75000.00


select * from EmployeeRecords
where salary between 75000.00 and 85000.00



select * from EmployeeRecords
where salary>=75000.00 and salary<=85000.00  

select * from EmployeeRecords
where salary not between 75000.00 and 85000.00


select * from EmployeeRecords
where not salary between 75000.00 and 85000.00

select * from EmployeeRecords
where Department='hr' or Department = 'it'

select * from EmployeeRecords
where Department in ('hr','it')

select * from EmployeeRecords
where Department not in ('hr','it')