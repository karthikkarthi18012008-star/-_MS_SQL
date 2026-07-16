
select * from sales

select min(Quantity) as min_quantity from Sales

select min(saledate) as min_saledate from sales

select min(paymentmethod) as min_paymode from sales

select * from sales

--Show minimum totalamount for each storeid
select storeid,productid,min(totalamount) as min_amount from sales 
group by storeid

--sum,avg,count


select * from dbo.Sales

select sum(quantity) [Total Quantity] from dbo.Sales

select sum(quantity) [Total Quantity],sum(totalamount) [Sum of Amount] 
from dbo.Sales

select avg(quantity) [Average Quantity] from dbo.Sales

select avg(quantity) [Avg Quantity],avg(totalamount) [Avg Amount]
from dbo.Sales

select * from dbo.Sales

--Sum of Quantity, sum of totalamount, avg of quantity, avg of total amount for each distinct product

select 
ProductID,
sum(Quantity) as [Total Quantity],
sum(TotalAmount) as [Sum of Amount],
avg(Quantity) [Average Quantity Sold],
avg(TotalAmount) [Average Amount]
from dbo.Sales
group by ProductID

select * from dbo.Sales

--Sum of Quantity, sum of amount, avg of quantity & avg of amount for distinct combinations of ProductID & storeid
select
productid,
storeid,
sum(Quantity) [Total Quantity],
sum(totalamount) [Sum of Amount],
avg(quantity) [Avg of Quantity],
avg(totalamount) [Avg of Amount]
from dbo.sales
group by ProductID,StoreID

select * from dbo.Sales

--count
select count(*) as total_rows from sales

select count(paymentmethod) as total_records from sales

select count(distinct productid) as distinct_id from sales

select paymentmethod from sales

select PaymentMethod,count(distinct paymentmethod) [Distinct Pay Mode] from dbo.Sales
group by PaymentMethod


select PaymentMethod,count(paymentmethod) [Distinct Pay Mode] from dbo.Sales
group by PaymentMethod

select PaymentMethod,count(*) [Pay Mode] from dbo.Sales
group by PaymentMethod

--group by and order by

select paymentmethod,sum(totalamount) as total_amount from sales
group by PaymentMethod

select paymentmethod,sum(totalamount) as total_amount from sales
where PaymentMethod is not null
group by PaymentMethod

select ProductID,PaymentMethod,sum(TotalAmount) [Sum of Sales] from dbo.Sales
group by ProductID,PaymentMethod
order by ProductID

--Total Sales, Avg Sales, Total Quantity, Avg Quantity for each distinct product

select * from sales

select 
ProductID,
sum(TotalAmount) [Sum of Sales],
sum(Quantity) [Total Quantity],
avg(TotalAmount) [Avg Amount],
avg(Quantity) [Avg Quantity]
from dbo.Sales
group by 
ProductID
having sum(TotalAmount)<700 and sum(Quantity) = 21



select 
ProductID,
sum(TotalAmount) [Sum of Sales],
sum(Quantity) [Total Quantity],
avg(TotalAmount) [Avg Amount],
avg(Quantity) [Avg Quantity]
from dbo.Sales

group by 
ProductID
having sum(TotalAmount)<700 or sum(Quantity) = 21

--| Feature                                                   | WHERE              | HAVING           |
--| --------------------------------------------------------- | ------------------ | ---------------- |
--| Used to filter                                            | Rows               | Groups           |
--| Executed                                                  | Before `GROUP BY`  | After `GROUP BY` |
--| Can use aggregate functions (`SUM`, `COUNT`, `AVG`, etc.) | ❌ No               | ✅ Yes            |
--| Works with                                                | Individual records | Grouped records  |

--having 

select * from sales

select productid,sum(quantity) as total_quantity from sales
group by productid
having sum(quantity) > 10


select productid,sum(quantity) as total_quantity from sales
group by productid
having sum(quantity) < 20

select productid,sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by PRODUCTid desc

select productid,sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by sum(totalamount) asc,productid asc              