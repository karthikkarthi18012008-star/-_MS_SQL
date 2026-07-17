
--joins
use salesdatabase



use [Sales Database]

--Creating Table1 & insertinting records in Table1
create table table1 (C1 int, C2 nvarchar(max))
insert into table1 values (1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA')

--Creating Table2 & insertinting records in Table2
create table table2 (C1 int, C3 nvarchar(max))
insert into table2 values (1,'XA'),
(2,'MB'),
(2,'NX'),
(NULL,'MO'),
(4,'XY'),
(5,'TF')

select * from table1

select * from table2

--inner join
select * from table1 as a inner join table2 as b on a.c1=b.c1


select a.c1,a.c2,b.c3 from table1 as a inner join table2 as b on a.c1=b.c1

--left outer join(left join)

select a.c1,a.c2,b.c3 from table1 as a left join table2 as b on a.c1=b.c1

--right outer join

select a.c1,a.c2,b.c3 from table1 as a right join table2 as b on a.c1=b.c1

--anti joins
--left anti join

select * from table1 as a left join table2 as b on a.c1 = b.c1
where b.c1 is null

--right ant join
select * from table1 as a right join table2 as b on a.c1 = b.c1
where a.c1 is null

--full join

select * from table1 as a  full outer join table2 as b on a.c1 = b.c1 

--selt join

select * from table1 as a inner join table1 as b on a.c1 = b.c1