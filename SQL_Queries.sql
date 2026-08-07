-- Check data
SELECT *
FROM Sales_Analysis_Dataset
LIMIT 10;

-- Total Orders
SELECT COUNT(*) AS Total_Orders
FROM Sales_Analysis_Dataset;

-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM Sales_Analysis_Dataset;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM Sales_Analysis_Dataset;

-- Sales by Category
SELECT 
Category,
SUM(Sales) AS Total_Sales
FROM Sales_Analysis_Dataset
GROUP BY Category;

-- Sales by Region
SELECT 
Region,
SUM(Sales) AS Total_Sales
FROM Sales_Analysis_Dataset
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top Products
SELECT 
Product,
SUM(Sales) AS Revenue
FROM Sales_Analysis_Dataset
GROUP BY Product
ORDER BY Revenue DESC
LIMIT 5;
