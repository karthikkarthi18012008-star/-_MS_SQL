-- Create the table with potential duplicates
CREATE TABLE EmployeeRecords (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),
(2, 'Bob Johnson', 1),
(3, 'Carol White', 1),
(4, 'David Brown', 2),
(5, 'Eve Davis', 2),
(6, 'Frank Miller', 3),
(2, 'Bob Johnson', 1),  -- Duplicate entry
(4, 'David Brown', 2);  -- Duplicate entry

select * from EmployeeRecords order by EmployeeID asc

--1.deleting the duplicate row
with cte as (
select *,ROW_NUMBER()
over(partition by employeeid,employeename,managerid order by employeeid)  [row no.] 
from EmployeeRecords
)
select * from cte
delete from cte where [row no.] = 2

--2.deleting the duplicate row
select distinct * into #1 from employee_bkp
truncate table employee_bkp
insert into employee_bkp select * from #1
select * from #1