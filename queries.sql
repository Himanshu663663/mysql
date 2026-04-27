-- ================================================
-- SQL Sales Analysis Project
-- Author: Himanshu663663
-- ================================================

-- Create Table
CREATE TABLE sales (
    Order_ID  INT,
    Date      DATE,
    Product   VARCHAR(50),
    Category  VARCHAR(50),
    Region    VARCHAR(50),
    Sales     INT,
    Profit    INT,
    Quantity  INT
);

-- Insert Data
INSERT INTO sales VALUES
(1001, '2024-01-05', 'Laptop',     'Electronics', 'North', 55000, 5000, 2),
(1002, '2024-01-07', 'Mobile',     'Electronics', 'South', 20000, 3000, 3),
(1003, '2024-01-10', 'Chair',      'Furniture',   'West',   8000, 1200, 4),
(1004, '2024-01-12', 'Table',      'Furniture',   'East',  15000, 2500, 2),
(1005, '2024-01-15', 'Headphones', 'Electronics', 'North',  3000,  500, 5);

-- ------------------------------------------------
-- ANALYSIS QUERIES
-- ------------------------------------------------

-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales FROM sales;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit FROM sales;

-- 3. Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity FROM sales;

-- 4. Overall Profit Margin (%)
SELECT ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Percent FROM sales;

-- 5. Category-wise Sales
SELECT Category, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 6. Category-wise Profit
SELECT Category, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 7. Region-wise Sales
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 8. Region-wise Profit
SELECT Region, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 9. Top Products by Sales
SELECT Product, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Product
ORDER BY Total_Sales DESC;

-- 10. Top Products by Profit
SELECT Product, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Product
ORDER BY Total_Profit DESC;

-- 11. Monthly Sales Trend
SELECT MONTH(Date) AS Month, SUM(Sales) AS Monthly_Sales
FROM sales
GROUP BY MONTH(Date)
ORDER BY Month;

-- 12. All Orders Details
SELECT * FROM sales ORDER BY Date;
