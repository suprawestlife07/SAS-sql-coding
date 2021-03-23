--creating a database
create database microsoft
--dropping a database
drop database microsoft
--activating database--
use microsoft
--creating table--


create table customer_data(customer_id int, customer_name varchar(20),age int,mobile_number varchar(10))

--viewing table--


select * from customer_data 


--viewing perticular coloum--
select age from customer_data

--inserting values in the table--
insert into customer_data values(5,'Supratik',29,9123024927)
insert into customer_data values(1,'Ram',26,9110324151)

insert into customer_data values(2,'raj',34,3839920390)

insert into customer_data values(3,'remo',22,9204321998)

insert into customer_data values(10,'Soham',26,998047890)
insert into customer_data values(11,'Akshay',29,998042468)
insert into customer_data values(12,'Rajib',37,998049745)

create table customer_sales(customer_id int ,sales float,profit float)

--viewing table--

select * from customer_sales

--viewing perticular coloum--

select profit from customer_sales

--inserting values in the table--

insert into customer_sales values(5,250.00,2000.00)
insert into customer_sales values(1,400.00,4500.75)

insert into customer_sales values(2,600.00,7800.95)

insert into customer_sales values(3,550.00,8900.00)

insert into customer_sales values(4,800.00,9000.00)

insert into customer_sales values(6,400.00,9000.00)
insert into customer_sales values(7,100.00,9000.00)
insert into customer_sales values(8,350.00,10000.00)
select * from customer_sales

--joining two tables

--select* from parent table inner join child table on parent table.primary key=child table.primary key
select * from customer_data inner join customer_sales on customer_data.customer_id=customer_sales.customer_id

select * from customer_data full outer join customer_sales on customer_data.customer_id=customer_sales.customer_id

select * from customer_data left join customer_sales on customer_data.customer_id=customer_sales.customer_id

select * from customer_data right join customer_sales on customer_data.customer_id=customer_sales.customer_id


--another table--
create table customer_data_weekly(customer_id int, customer_name varchar(20),age int,mobile_number varchar(10))
insert into customer_data_weekly values (8,'vivek',34,9393309243)
insert into customer_data_weekly values (9,'rovek',54,9393709243)
insert into customer_data_weekly values (10,'tokyo',56,9343309243)
insert into customer_data_weekly values (11,'jbdvek',59,932230943)
insert into customer_data_weekly values (12,'locok',38,9393309243)

--union join--

select * from customer_data union
select * from customer_data_weekly

--where clause--
select * from customer_data where customer_id=3
-- and operator--
select* from customer_data where customer_id=3 and customer_name='Remo'

--OR operator--
select* from customer_data where customer_id=4 or customer_name='Remo'

--Not operator--
select* from customer_data where not customer_name= 'Remo'

--sorting the table--
select* from customer_data order by customer_name asc
select* from customer_data order by customer_name desc

--altering the existing table--

alter table customer_data add height float
alter table customer_data alter column height int 
alter table customer_data alter column height float
alter table customer_data drop column height
alter table customer_data add weight float

--updating the table--
update customer_data set weight = 20.14 where customer_id=1
update customer_data set weight = 26.14 where customer_id=5
update customer_data set weight = 32.14 where customer_id=2
update customer_data set weight = 48.14 where customer_id=3
update customer_data set weight = 52.14 where customer_id=4
update customer_data set weight = 65.14 where customer_id=10
update customer_data set weight = 78.14 where customer_id=11
update customer_data set weight = 85.14 where customer_id=12

alter table customer_data add height float
update customer_data set height=3*weight

--aggregate functions--

select sum (sales) from customer_sales
select count(sales) from customer_sales
select min (sales) from customer_sales
select max (sales) from customer_sales
select avg (sales) from customer_sales

--aliases--

select sum (sales) as 'sum of sales ' from customer_sales 
select count(sales) as 'count of sales'from customer_sales
select min (sales) as 'min of sales'from customer_sales
select max (sales) as 'max of sales' from customer_sales
select avg (sales) as 'avg of sales'from customer_sales

-//**Date, time and few advanced functions**//
Select CURRENT_TIMESTAMP
Select DAY ('2021-02-18')
Select GETDATE ()
Select GETUTCDATE ()
Select COALESCE (null,null,null,'Supratik','Besant') --takes first non null value--
Select CONVERT (int,26.85)
Select SESSION_USER
Select SYSTEM_USER
Select USER_NAME ()

--Numeric functions--

//**
ABS Returns the absolute value of a number**//

Select ABS(-18)

//**ACOS Returns the arc cosine of a number**//

Select Acos (0.5)

//**ASIN Returns the arc sine of a number**//

Select ASIN(0.5)

//**ATAN Returns the arc tangent of one or two numbers**//

Select ATAN(0.5)

//**AVG Returns the average value of an expression**//

Select AVG (sales)from customer_sales

--//**CEILING Returns the smallest integer value that is >= to a number**//

Select CEILING(26.10)

//**COS Returns the cosine of a number**//

Select Cos(90)


//**COT Returns the cotangent of a number**//

Select Cot(90)


//**COUNT Returns the number of records returned by a select query**//

select Count(Sales) from customer_sales

//**DEGREES Converts a value in radians to degrees**//

Select DEGREES(1)


//**EXP Returns e raised to the power of a specified number**//

Select EXP(1)

//**FLOOR Returns the largest integer value that is <= to a number**//

Select FLOOR(25.10)

Select Log(2)

//**LOG10 Returns the natural logarithm of a number to base 10**//

Select LOG10(10)


//**MAX Returns the maximum value in a set of values**//

Select Max(sales)from Customer_data


//**MIN Returns the minimum value in a set of values**//

Select Min (sales)from Customer_data

//**PI Returns the value of PI**//

Select PI()

//**POWER Returns the value of a number raised to the power of another number**//

Select POWER(2,3)

//**RADIANS Converts a degree value into radians**//

Select ROUND(25.68,1)

//**SIGN Returns the sign of a number**//

Select sign (-9)


//**SIN Returns the sine of a number**//

Select sin (45)

//**SQRT Returns the square root of a number**//

Select sqrt (64)

--//**SUM Calculates the sum of a set of values**//

Select Sum (sales) from Customer_data

--//**TAN Returns the tangent of a number**//

Select TAN(90)

--string functions--

SELECT CHAR (102) --ascii code
SELECT CONCAT ('Supratik','Chatterjee')
SELECT DATALENGTH ('Supratik')
SELECT LEFT('Supratik',2)
select LEN('Supratik l')
SELECT LOWER('Supratik')
SELECT LTRIM('     Supratik')
select REPLACE('Supratik','B','G')
SELECT REPLICATE('Supratik ',5)
select REVERSE('Supratik')
SELECT RIGHT('Supratik',2)
SELECT RTRIM('Supratik ')
SELECT SUBSTRING('Supratik',3,3)
select UNICODE('A') -- Reverse of Char
select UPPER('Supratik')

--Joining three tables

--Select * from parent table inner join child table 1 on
--parent table.primary key = child table 1.primary key
--inner join child table 2 on
-- parent table.primary key = child table 2.primary key

select * from customer_product
create table customer_product (customer_id int, product_name varchar(10), product_id int)
insert into customer_product values(1,'pepsi',102)
insert into customer_product values(2,'coke',103)
insert into customer_product values(3,'fanta',104)

--Select * from parent table inner join child table 1 on
--parent table.primary key = child table 1.primary key
--inner join child table 2 on
-- parent table.primary key = child table 2.primary key

Select * from customer_data inner join customer_sales on
customer_data.customer_id = customer_sales.customer_id
inner join customer_product on
customer_data.customer_id = customer_product.customer_id

Select * from customer_data full outer join customer_sales on
customer_data.customer_id = customer_sales.customer_id
full outer join customer_product on
customer_data.customer_id = customer_product.customer_id

--view tempory table--


create view temp_1_table  as
Select customer_name ,age, mobile_number,profit,sales,product_name,product_id, customer_data.customer_id
from customer_data inner join customer_sales on
customer_data.customer_id = customer_sales.customer_id
inner join customer_product on
customer_data.customer_id = customer_product.customer_id

select * from temp_1_table
where customer_id=3

with result as (Select customer_name ,age, mobile_number,profit,sales,product_name,product_id, customer_data.customer_id
from customer_data inner join customer_sales on
customer_data.customer_id = customer_sales.customer_id
inner join customer_product on
customer_data.customer_id = customer_product.customer_id) select *from result where customer_id=3


create view temp_2_table  as
Select customer_name,age, mobile_number,profit,sales,product_name, product_id, customer_data.customer_id
from customer_data full outer join customer_sales on
customer_data.customer_id = customer_sales.customer_id
full outer join customer_product on
customer_data.customer_id = customer_product.customer_id

with result as (Select customer_name,age, mobile_number,profit,sales,product_name, product_id, customer_data.customer_id
from customer_data full outer join customer_sales on
customer_data.customer_id = customer_sales.customer_id
full outer join customer_product on
customer_data.customer_id = customer_product.customer_id) select * from result where customer_id=3




select * from v2

--Stored procedures
create procedure procedure_1 as
Select * from customer_data inner join customer_sales on
customer_data.customer_id = customer_sales.customer_id
inner join customer_product on
customer_data.customer_id = customer_product.customer_id

execute procedure_1-- select data from stored procedure

--//**Working with duplicates**//

Create table Employees
(
ID int,
FirstName nvarchar(50),
LastName nvarchar(50),
Gender nvarchar(50),
Salary int
)
Select * from Employees

Insert into Employees values (1, 'Mark', 'Hastings', 'Male', 56000)
Insert into Employees values (1, 'Mark', 'Hastings', 'Male', 58000)
Insert into Employees values (1, 'Mark', 'Hastings', 'Male', 60000)
Insert into Employees values (2, 'Mary', 'Lambeth', 'Female', 28000)
Insert into Employees values (2, 'Mary', 'Lambeth', 'Female', 30000)
Insert into Employees values (3, 'Ben', 'Hoskins', 'Male', 65000)
Insert into Employees values (3, 'Ben', 'Hoskins', 'Male', 68000)
Insert into Employees values (3, 'Ben', 'Hoskins', 'Male', 70000)
Insert into Employees values (4, 'Shri', 'gowda', 'Male', 40000)

Select * from Employees

--//**RANK
SELECT ID,
RANK() OVER (ORDER BY ID DESC) AS RANK FROM Employees
--//**Dense rank**//
SELECT ID,
DENSE_RANK() OVER (ORDER BY ID DESC) AS DENSERANK FROM Employees
--//**Row Number**//
SELECT *,
Row_Number() OVER (ORDER BY ID DESC) AS Row_Number FROM Employees


--//** Giving condition to Row number**//
WITH task AS
(SELECT ID,ROW_NUMBER() OVER (ORDER BY ID DESC) AS ROW_NUMBER
FROM EMPLOYEES
)
SELECT *from task
WHERE ROW_NUMBER = 2

--//** Giving condition to RANK**//
WITH RESULT AS
(SELECT SALARY,RANK() OVER (ORDER BY SALARY DESC) AS RANK
FROM EMPLOYEES
)
SELECT RANK
FROM RESULT
WHERE RANK = 2

--//**Deleting th duplicates**//
SELECT * FROM Employees

WITH Task AS
(
SELECT *, ROW_NUMBER()OVER(PARTITION BY ID ORDER BY ID) AS RowNumber
FROM Employees
)
DELETE FROM Task WHERE RowNumber > 1 --**Deleting duplicate records**

--//** Case statement**//

Create table Employees_1
(
Id int primary key identity,
Name nvarchar(10),
GenderId int
)

Insert into Employees_1 values ('Mark', 1)
Insert into Employees_1 values ('John', 1)
Insert into Employees_1 values ('Amy', 2)
Insert into Employees_1 values ('Ben', 1)
Insert into Employees_1 values ('Sara', 2)
Insert into Employees_1 values ('David', 1)

Select * from Employees_1

--Using CASE statement
SELECT Name, GenderId,
CASE WHEN GenderId = 1
THEN 'Male'
ELSE 'Female'
END as gender
FROM Employees_1

--Using iif statement
SELECT Name, GenderId, IIF(GenderId = 1, 'Male', 'Female') AS Gender
FROM Employees_1

//** adding formula field to the table**//
alter table customer_sales add doubling_sales as (Sales*2);
select*from customer_sales

--Grant previlege--
Grant previlege name(user name) on object name(table name) to user name|Role(managerial)

//** Revoke**//
revoke Previllege name(user name) on object name(table name) to user name|Role(managerial)

--Group by--
select sum(Sales),[Order Priority] from [dbo].[Orders$] group by [Order Priority]


//** Transactional control langauge**//

select*from customer_sales;
begin transaction;
delete from customer_sales where sales =10000;
commit;
begin transaction;
delete from customer_sales where sales=100.33;
rollback;
begin transaction
Savepoint;


 --Triggers--
CREATE TABLE Employee_Test
(
Emp_ID INT Identity,
Emp_name Varchar(100),
Emp_Sal Decimal (10,2)
)

INSERT INTO Employee_Test VALUES ('Anees',1000);
INSERT INTO Employee_Test VALUES ('Rick',1200);
INSERT INTO Employee_Test VALUES ('John',1100);
INSERT INTO Employee_Test VALUES ('Stephen',1300);
INSERT INTO Employee_Test VALUES ('Maria',1400);

select *from Employee_Test

CREATE TABLE Employee_Test_Audit
(
Emp_ID int,
Emp_name varchar(100),
Emp_Sal decimal (10,2),
Audit_Action varchar(100),
Audit_Timestamp datetime
)

select *from Employee_Test_Audit

CREATE TRIGGER trgAfterInsert ON [dbo].[Employee_Test]
FOR INSERT
AS
declare @empid int;
declare @empname varchar(100);
declare @empsal decimal(10,2);
declare @audit_action varchar(100);
select @empid=i.Emp_ID from inserted i;
select @empname=i.Emp_Name from inserted i;
select @empsal=i.Emp_Sal from inserted i;
set @audit_action='Inserted Record -- After Insert Trigger.';

insert into Employee_Test_Audit
(Emp_ID,Emp_Name,Emp_Sal,Audit_Action,Audit_Timestamp)
values(@empid,@empname,@empsal,@audit_action,getdate());

PRINT 'AFTER INSERT trigger fired.'
GO

insert into Employee_Test values('Ravi',1500);


