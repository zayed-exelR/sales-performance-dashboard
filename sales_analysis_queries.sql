SQL QUERIES
------------------------------------------

-- Total Revenue
SELECT SUM(Sales) AS Total_Revenue
FROM sales;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM sales;

-- Profit Margin
SELECT 
ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percent
FROM sales;

-- Total Orders
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales;

-- Average Order Value
SELECT 
ROUND(SUM(Sales)/COUNT(DISTINCT Order_ID),2) AS Avg_Order_Value
FROM sales;

-- Monthly Revenue Trend
SELECT 
YEAR(Order_Date) AS Year,
MONTH(Order_Date) AS Month,
SUM(Sales) AS Monthly_Revenue
FROM sales
GROUP BY Year, Month
ORDER BY Year, Month;

-- Revenue by Region
SELECT 
Region,
SUM(Sales) AS Region_Revenue
FROM sales
GROUP BY Region
ORDER BY Region_Revenue DESC;

-- Top 10 Customers
SELECT 
Customer_ID,
SUM(Sales) AS Customer_Revenue
FROM sales
GROUP BY Customer_ID
ORDER BY Customer_Revenue DESC
LIMIT 10;

-- Category Performance
SELECT 
Category,
SUM(Sales) AS Category_Revenue,
SUM(Profit) AS Category_Profit
FROM sales
GROUP BY Category;