--insert
select * from employees

insert into employees (employeeid,firstname,lastname,department,salary,hiredate)
values (6,'karthik','ajay','aiml',100000,'2026-01-01')

insert into Employees (EmployeeID,FirstName,LastName)
values (7,'rohit','sharma')

insert into Employees
values (8,'mahesh','narang','HR',73000,'2026-07-11')

select * from employees

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'employees'

--null

insert into dbo.Employees
values (9,'Jay','','IT',73000,'2022-04-04')

INSERT INTO DBO.Employees
VALUES (10,'Nitin','shamani','0',54000,'2021-02-22')

select * from Employees where Department = null
--no output from above


select * from Employees where Department is null --this works


select * from Employees where Department is not null

--update clause
select * into #1 from Employees --creating a temporaru table just not to change
--anythin in main table

select * from #1

update #1 set Department = 'HR' where Department is null
select distinct * from Employees

update #1 set salary = 89000,hiredate = '2023-01-01'
where EmployeeID = 7

select * from #1 where EmployeeID = 7

select * into #4 from dbo.Employees

select * from #4


update #4
set Department = 'Finance'

--delete,drop and tuncate

--Delete - delete certain records from the table

--if we will use delete without where condition, all records from the table will be deleted, but the 
--table structure remains intact

--Truncate - delete all the records from the table but the structure of the table remains intact

--Drop - all the records will be deleted plus table structure will also be removed

select * from Employees

select * into #5 from Employees

select * from #5

delete from #5 where lastname = ' ' or department = '0'

select * into #6 from dbo.Employees

select * from  #6

delete from #6

select * from #5

truncate table #5

drop table #4
select * from employees

select * into #4 from employees

select * from #4


drop table #4
