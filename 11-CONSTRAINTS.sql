--Constraints

--Conditions that can be applied on columns of a table & these conditions are to be followed while
--inserting records into the table

--1). NOT NULL constraint

--CASE 1:when the table is to be created
create table test_not_null(
id int not null,
age tinyint,
firstname varchar(256)
)

insert into test_not_null values(1,24,'karthik')

insert into test_not_null values(null,20,'ajay') --error bcz of null in id

insert into test_not_null values(1,30,null)

select * from test_not_null

--CASE 2: when the table already exist

alter table test_not_null
alter column age tinyint not null

insert into test_not_null values(1,null,'karthik') --error bcz of null in age

--unique constraint

--It ensures that a column consists of unique values

--Case 1 : We need to create the table
create table test_unique (
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)

select * from test_unique

insert into test_unique values (1,22,'Mayank','Mehera')

insert into test_unique values (1,24,'Rohit','Singh')  --*****************

insert into test_unique values (null,34,'Akhilesh','Jain')

insert into test_unique values (null,54,'Nitin','Singh') --******************

truncate table test_unique

--Case 2: when the table already exists

alter table test_unique
add unique (lastname)

insert into test_unique values (1,24,'Rohit','Singh')  --*****************

insert into test_unique values (null,54,'Nitin','Singh') --******************

--3.check constraint

--It checks for certain condition that can be applied on the columns of a table, if this condition is not
--fulfilled, we will not be able to insert the records into the table

--Case 1 : Table doesn't exist
create table test_check (
EID int,
firstname varchar(256),
age tinyint check(age>=10)
)

select * from test_check

insert into test_check values (1,'Mayank','20')

insert into test_check values (2,'Raj',9) --error

update test_check set EID = 11 where EID = 1

--Case 2 : Table exists
alter table test_check
add check (eid>5)

insert into test_check values(3,'Nitin',34) --error bcz of eid column

insert into test_check values(30,'Nitin',34)

--4.Default Constraint
--This constraint to provide default values to columns

--Case 1 : The table does not exist
create table test_default (
EID int default 5,
firstname varchar(256) default 'Rohit',
lastname varchar(256),
age tinyint
)

select * from test_default

insert into test_default values(1,'Nitin','Jain',23)

insert into test_default(lastname,age) values('Singh',34)

insert into test_default (lastname) values ('Grover')

--Case 2 : The table already exists

alter table test_default
add default 25 for age

insert into test_default (lastname) values('Jain')

select * from test_default

--5.Primary Key Constraint

create table test_pk_1 (
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)

insert into test_pk_1 values(1,'M',23,'Mayank')

select * from test_pk_1

insert into test_pk_1 values (1,'F',19,'Priya') --error bcz of eid column

insert into test_pk_1 values (null,'M',25,'Raj') --error due to null

truncate table test_pk_1

--Case 2 : Table Already exists
alter table test_pk_1
add primary key (age)

drop table test_pk_2

create table test_pk_2 (
SID int not null unique,
firstname nvarchar(256),
age tinyint not null
)

alter table test_pk_2
add primary key (sid,age)

alter table test_pk_2
add primary key (sid)

--6.Foreign Key Constraint

--Case 1 : When the new table has to be created
create table test_Primary_key (
ID int primary key,
name varchar(256)
)

insert into test_primary_key values (1,'Mayank'),(2,'Raj'),(3,'Jayant')

select * from test_Primary_key

create table test_foreign_key (
ID int foreign key references test_primary_key(id),
course varchar(256)
)

insert into test_foreign_key values (1,'A')

select * from test_foreign_key

insert into test_foreign_key values (null,'B')

INSERT INTO test_foreign_key VALUES (5,'C')

--Case 2 : Table already exists
create table test_foreign_key_2 (ID int, course varchar(256))

alter table test_foreign_key_2
add foreign key (id) references test_primary_key(id)

