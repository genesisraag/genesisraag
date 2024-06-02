select *
from sales_data_sample;

-- Total Sales by Product Line
select PRODUCTLINE, format(sum(sales), 2) as TotalSales
from sales_data_sample
group by
PRODUCTLINE;

-- Monthly Sales Trends
select YEAR_ID, MONTH_ID, format(sum(sales), 2) as TotalSales
from sales_data_sample
group by YEAR_ID, MONTH_ID
order by
YEAR_ID, MONTH_ID;

-- Top Customers by Sales
select CUSTOMERNAME, format(sum(sales), 2) as TotalSales
from sales_data_sample
group by CUSTOMERNAME
order by TotalSales desc
limit 10;

-- Sales by Territory
select TERRITORY, format(sum(sales), 2) as TotalSales
from sales_data_sample
group by TERRITORY;

-- Average Sales Pricer per Product Code
select PRODUCTCODE, format(avg(PRICEEACH), 2) as AveragePrice
from sales_data_sample
group by PRODUCTCODE;

