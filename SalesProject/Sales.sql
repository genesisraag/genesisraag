-- Sales Data Analysis

-- Create Database
create database SalesDB;

-- Use Database
use SalesDB;

-- Create Products Table
create table Products (
	ProductID int primary key,
    ProductName varchar(100),
    Price decimal(10,2)
);

-- Create SalesPersons Table
create table SalesPersons (
	SalesPersonID int primary key,
    SalesPersonName varchar(100)
);

-- Create Sales Table
create table Sales (
	SaleID int primary key,
    ProductID int,
    SalesDate date,
    Quantity int,
    SalesPersonID int,
    Region varchar(100),
    foreign key (ProductID) references Products(ProductID),
    foreign key (SalesPersonID) references SalesPersons(SalesPersonID)
);

-- Insert Data into Products Table
insert into Products (ProductID, ProductName, Price) values
(1, 'Apple iPhone 14', 999.99),
(2, 'Samsung Galaxy S21', 799.99),
(3, 'Google Pixel 7', 599.99),
(4, 'Sony WH-1000XM4 Headphones', 349.99),
(5, 'Dell XPS 13 Laptop', 1199.99);

-- Insert Data into SalesPersons Table
insert into SalesPersons (SalesPersonID, SalesPersonName) values
(1, 'Alice'),
(2, 'Charles'),
(3, 'Bob');

-- Insert Data into Sales Table
insert into Sales (SaleID, ProductID, SalesDate, Quantity, SalesPersonID, Region) values
(1, 1, '2023-05-01', 5, 1, 'North'),
(2, 2, '2023-05-02', 3, 2, 'East'),
(3, 3, '2023-05-03', 2, 3, 'West'),
(4, 1, '2023-05-04', 4, 1, 'North'),
(5, 2, '2023-05-05', 1, 2, 'East'),
(6, 4, '2023-05-06', 7, 3, 'West'),
(7, 5, '2023-05-07', 3, 2, 'North'),
(8, 3, '2023-05-08', 6, 1, 'South');

-- Calculate Total Sales by Region
select Region, sum(Quantity * Price) as TotalSales
from sales
join Products on Sales.ProductID = Products.ProductID
group by Region;

-- Calculate Total Sales by Product
select ProductName, sum(Quantity) as TotalQuantitySold, sum(Quantity * Price) as TotalSales
from sales
join Products on Sales.ProductID = Products.ProductID
group by ProductName;

-- Calculate Total Sales by SalesPerson
select SalesPersonName, sum(Quantity * Price) as TotalSales
from sales
join SalesPersons on Sales.SalesPersonID = SalesPersons.SalesPersonID
join Products on Sales.ProductID = Products.ProductID
group by SalesPersonName;

-- Identify Top-Selling Products
select ProductName, sum(Quantity) as TotalQuantitySold
from sales
join Products on Sales.ProductID = Products.ProductID
group by ProductName
order by TotalQuantitySold desc;

-- Analyze Monthly Sales Trends
select date_format(SalesDate, '%Y-%m') as SaleMonth, sum(Quantity * Price) as TotalSales
from Sales 
join Products on Sales.ProductID = Products.ProductID
group by SaleMonth
order by SaleMonth;
