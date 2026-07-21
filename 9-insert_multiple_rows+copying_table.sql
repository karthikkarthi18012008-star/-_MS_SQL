
--creating table
create database Students
create table student_details(
Student_Name nvarchar(256),
Gender char(1),
age tinyint,
event_date date,
destance decimal(5,2)
)
select * from student_details

insert into student_details (student_name,Gender,age,event_date,destance)
values ('Raf Mehera','M',25,'2024-08-03',123.11)

insert into student_details
values ('Nitin Singh','M',32,'2023-12-06',119.09)

--inserting multiple rows

insert into student_details
values ('Mayank','M',18,'2024-02-02',115.35),
('Mahesh','M',34,'2023-11-08',324.66)

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

insert into student_details (Student_Name,Gender)
values ('Priya','F')

select * from student_details

insert into student_details(Age,event_date)
values (34,'2023-10-04'),(43,'2019-01-01'),(19,'2022-08-08')

select * from student_details

--Datatype of column age is tinyint (0 to 255)

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

insert into student_details (Age)
values (256) --error

insert into student_details (Student_Name)
values (256) --new row will be created


--Copying Data From existing table to the New table

--Case 1 : The New table simply doesn't exist
--Case 2: The New table structure/New Table exists

--CASE 1 :
select * from dbo.Sales 

--All columns were copied from existing table
--This statement will result in the creation of New_Table_1 which will be having structure & records both
--same as that of dbo.sales table
select * into New_Table_1 from dbo.Sales

select * from New_Table_1

-------------------Certain Columns to be copied
drop table New_Table_1

select productid,quantity into new_table_1 from dbo.Sales

select * from new_table_1


--CASE 2 : New table structure/table already exists

select top 0 * into new_table_2 from sales --only column names will be copied

select * from new_table_2

insert into new_table_2 select * from sales

select * from new_table_2

------Copying Certain Columns

select * into new_table_3 from sales where 1=0

select * from new_table_3 --only column names will be copied

insert into new_table_3 (ProductID,SaleDate) select productid,saledate from dbo.Sales

select * from new_table_3