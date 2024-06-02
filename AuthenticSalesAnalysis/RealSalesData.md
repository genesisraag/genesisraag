Project 2: Sales Performance Analysis using Authentic Data
=========================================================

Project 2 builds upon the exploratory data analysis conducted in Project 1 by analyzing a real sales dataset to uncover actionable insights and trends. The analysis aims to provide a deeper understanding of sales performance and customer behavior to inform strategic decision-making.

## Dataset Description
The dataset used in this analysis comprises real sales transactions spanning multiple time periods and product categories. It includes detailed information such as sales revenue, product lines, customer demographics, geographic regions, and more. The dataset is sourced from  [Kaggle](https://www.kaggle.com/datasets/kyanyoga/sample-sales-data) and is representative of actual sales data collected from retail operations. 


Objectives
----------
- Analyze sales performance across different product lines and geographic regions.
- Identify factors influencing sales trends and customer purchasing behavior.

Methodologies
-------------
- Data preprocessing to clean and prepare the dataset for analysis.
- Exploratory data analysis (EDA) techniques to visualize and explore key trends and patterns in the data.

## Insights and Discoveries:

### Total Sales by Product Line:

| Product Line     | Total Sales  | 
|------------------|--------------|
| Motorcycles      | $1,166,388.34|
| Classic Cars     | $3,919,615.66|
| Trucks and Buses | $1,127,789.84|
| Vintage Cars     | $1,903,150.84|
| Planes           | $975,003.57  |
| Ships            | $714,437.13  |
| Trains           | $226,243.47  |

- Classic Cars contribute the most to total sales, followed by Vintage Cars and Motorcycles.
- Planes and Ships have lower total sales compared to other product lines.
  
### Monthly Sales Trends:

| Year | Month | Total Sales |
|------|-------|-------------|
| 2003 | Jan.  | $129,753.60 |
| 2003 | Feb.  | $140,836.19 |
| 2003 | Mar.  | $174,504.90 |
| 2003 | April | $201,609.55 |
| 2003 | May   | $192,673.11 |
| 2003 | June  | $168,082.56 |
| 2003 | July  | $187,731.88 |
| 2003 | August| $197,809.30 |
| 2003 | Sept. | $263,973.36 |
| 2003 | Oct.  | $568,290.97 |
| 2003 | Nov.  | $1,029,837  |
| 2003 | Dec.  | $261,876.46 |
| 2004 | Jan.  | $316,577.42 |
| 2004 | Feb.  | $311,419.53 |
| 2004 | Mar.  | $205,733.73 |
| 2004 | April | $206,148.12 |
| 2004 | May   | $273,438.39 |
| 2004 | June  | $286,674.22 |
| 2004 | July  | $327,144.09 |
| 2004 | August| $461,501.27 |
| 2004 | Sept. | $320,750.91 |
| 2004 | Oct.  | $552,924.25 |
| 2004 | Nov.  | $1,089,048  |
| 2004 | Dec.  | $372,802.66 |
| 2005 | Jan.  | $339,543.42 |
| 2005 | Feb.  | $358,186.18 |
| 2005 | Mar.  | $374,262.76 |
| 2005 | April | $261,633.29 |
| 2005 | May   | $457,861.06 |

- Sales exhibit seasonal variations, with peaks typically observed towards the end of the year, especially in November.
- There is a noticeable increase in sales from October to December each year.
  
### Top Customers by Sales:

| Customer Name                | Total Sales |
|------------------------------|-------------|
| FunGiftIdeas.com             | $98,923.73  |
| La Corne D'abondance, Co.    | $97,203.68  |
| Amica Models & Co.           | $94,117.26  |
| Cruz & Sons Co.              | $94,015.73  |
| Auto Canal Petit             | $93,170.66  |
| Euro Shopping Channel        | $912,294.11 |
| Boards & Toys Co.            | $9,129.35   |
| Stylish Desk Decors, Co.     | $88,804.50  |
| Vitachrome Inc.              | $88,041.26  |
| Collectable Mini Designs Co. | 87,489.23   |

- FunGiftIdeas.com, La Corne D'abondance, Co., and Amica Models & Co. are the top three customers based on total purchases.
- These top customers significantly contribute to the overall sales revenue.

### Sales by Territory: 

| Territory | Total Sales |
|-----------|---------------|
| NA        | $3,852,061.39 |
| EMEA      | $4,979,272.41 |
| APAC      | $746,121.83   |
| Japan     | $455,173.22   |

- EMEA (Europe, Middle East, and Africa) generates the highest sales revenue among all territories.
- North America follows closely behind, while APAC (Asia-Pacific) and Japan contribute relatively smaller portions to total sales.

### Average Sales Price per Product Code
| Product Code | Average Price |
|--------------|---------------|
| S18_2957     | $61.27        |
| S18_3029     | $83.57        |
| S18_3136     | $92.59        |
| S18_3140     | $97.23        |
| S18_3232     | $99.04        |
| S18_3259     | $95.95        |
| S18_3278     | $78.81        |
| S18_3320     | $94.17        |
| S18_3482     | $99.86        |
| S18_3685     | $96.94        |
| S18_3782     | $62.94        |
| S18_3856     | $94.13        |
| S18_4027     | $100.00       |
| S18_4409     | $91.04        |
| S18_4522     | $86.60        |
| S18_4600     | $98.37        |
| S18_4668     | $61.63        |
| S18_4721     | $96.89        |
| S18_4933     | $73.00        |
| S24_1046     | $72.45        |
| S24_1444     | $61.53        |
| S24_1578     | $97.61        |
| S24_1628     | $52.85        |
| S24_1785     | $90.30        |
| S24_1937     | $43.99        |
| S24_2000     | $79.79        |
| S24_2011     | $96.26        |
| S24_2022     | $50.86        |
| S24_2300     | $100.00       |
| S24_2360     | $72.51        |
| S24_2766     | $85.06        |
| S24_2840     | $44.01        |
| S24_2841     | $69.92        |
| S24_2887     | $93.33        |
| S24_2972     | $45.50        |
| S24_3151     | $87.43        |
| S24_3191     | $79.36        |
| S24_3371     | $62.05        |
| S24_3420     | $70.36        |
| S24_3432     | $93.65        |
| S24_3816     | $81.25        |
| S24_3856     | $98.07        |
| S24_3949     | $71.88        |
| S24_3969     | $45.05        |
| S24_4048     | $97.51        |
| S24_4258     | $92.87        |
| S24_4278     | $76.43        |
| S24_4620     | $84.27        |
| S32_1268     | $95.78        |
| S32_1374     | $93.59        |
| S32_2206     | $47.08        |
| S32_2509     | $56.33        |
| S32_3207     | $65.68        |
| S32_3522     | $72.07        |
| S32_4289     | $70.73        |
| S32_4485     | $94.60        |
| S50_1341     | $50.60        |
| S50_1392     | $97.01        |
| S50_1514     | $66.11        |
| S50_4713     | $84.01        |
| S700_1138    | $70.57        |
| S700_1691    | $90.79        |
| S700_1938    | $89.55        |

- Several product codes have high average prices, indicating premium or high-value products.
- Some product codes have lower average prices, potentially representing more affordable or budget-friendly items.

In conclusion, the analysis of the sales dataset uncovered valuable insights into product performance, seasonal sales trends, customer contributions, geographical sales distribution, and pricing dynamics. Classic Cars and Vintage Cars emerged as top performers, while seasonal sales trends indicated peak periods towards the end of the year. Key customers significantly contributed to sales revenue, with the EMEA region leading in geographical sales distribution. Understanding these insights is crucial for optimizing marketing strategies, nurturing key customer relationships, and maximizing profitability.







