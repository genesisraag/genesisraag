-- Customer Segmentation Project
create database CustomerSegmentation;

-- Use Database
use CustomerSegmentation;

-- Create Tables
create table Customers (
	CustomerID int primary key,
    CustomerName varchar(100),
	Age int,
    Gender char(1),
    Region varchar(10)
);
    
create table Transactions (
	TransactionID int primary key,
    CustomerID int,
    PurchaseDate date,
    Amount decimal (10, 2),
    ProductCategory varchar(100),
    foreign key (CustomerID) references Customers(CustomerID)
);

-- Insert Sample Data
insert into Customers (CustomerID, CustomerName, Age, Gender, Region) values
(1, 'John Doe', 28, 'M', 'North'),
(2, 'Jane Smith', 34, 'F', 'South'),
(3, 'Alice Johnson', 45, 'F', 'East'),
(4, 'Michael Johnson', 40, 'M', 'West'),
(5, 'Emily Brown', 32, 'F', 'North'),
(6, 'David Miller', 55, 'M', 'South');

insert into Transactions (TransactionID, CustomerID, PurchaseDate, Amount, ProductCategory) values
(1, 1, '2024-01-01', 100.00, 'Electronics'),
(2, 2, '2024-01-03', 150.00, 'Clothing'),
(3, 1, '2024-02-15', 200.00, 'Groceries');

-- Calculate Total Spend Per Customer
select c.CustomerID, c.CustomerName, sum(t.Amount) as TotalSpend
from Customers c
join Transactions t on c.CustomerID = t.CustomerID
group by c.CustomerID, c.CustomerName;

-- Categorize Customers Based on Total Spend
select c.CustomerID, c.CustomerName, sum(t.Amount) as TotalSpend,
case
	when sum(t.Amount) > 500 then 'High-Value'
    when sum(t.Amount) between 200 and 500 then 'Medium-Value'
    else 'Low-Value'
end as CustomerCategory
from Customers c
join Transactions t on c.CustomerID = t.CustomerID
group by c.CustomerID, c.CustomerName;

-- Analyze Purchase Frequency
select c.CustomerID, c.CustomerName, count(t.TransactionID) as PurchaseCount, format(avg(t.Amount), 2) as AverageSpend
from Customers c 
join Transactions t on c.CustomerID = t.CustomerID
group by c.CustomerID, c.CustomerName;

-- Combine Spend and Frequency for Comprehensive Segmentation
select
	c.CustomerID,
    c.CustomerName,
    sum(t.Amount) as TotalSpend,
    count(t.TransactionID) as PurchaseCount,
    format(avg(t.Amount), 2) as AverageSpend,
    case
		when sum(t.Amount) > 500 then 'High-Value'
        when sum(t.Amount) between 200 and 500 then 'Medium-Value'
        else 'Low-Value'
	end as SpendCategory,
    case
		when count(t.TransactionID) > 10 then 'Frequent'
        when count(t.TransactionID) between 5 and 10 then 'Regular'
        else 'Occasional'
	end as FrequencyCategory
from 
	Customers c 
join 
	Transactions t on c.CustomerID = t.CustomerID
group by 
	c.CustomerID, c.CustomerName;
    
-- Segment Customers Based on Demographics
select
	c.CustomerID,
    c.CustomerName,
    c.Age,
    c.Gender,
    c.Region,
    case
		when c.Age < 30 then 'Youth'
        when c.Age between 30 and 50 then 'Adult'
        else 'Senior'
	end as AgeGroup,
    count(t.TransactionID) as PurchaseCount,
    sum(t.Amount) as Totalspend
from
	Customers c
join 
	Transactions t on c.CustomerID = t.CustomerID
group by
	c.CustomerID, c.CustomerName, c.Age, c.Gender, c.Region;

insert into Transactions (TransactionID, CustomerID, PurchaseDate, Amount, ProductCategory) values
(4, 3, '2024-03-20', 300.00, 'Electronics'),
(5, 4,  '2024-04-25', 250.00, 'Clothing'),
(6, 5, '2024-05-30', 350.00, 'Groceries'),
(7, 6, '2024-06-10', 400.00, 'Electronics'),
(8, 1, '2024-07-15', 500.00, 'Clothing'),
(9, 2, '2024-08-20', 600.00, 'Groceries'),
(10, 3, '2024-09-25', 700.00, 'Electronics');
