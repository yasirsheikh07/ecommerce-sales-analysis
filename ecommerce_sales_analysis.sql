USE ecommerce_analysis;

SELECT * FROM orders; 

-- Total Sales 
SELECT SUM(Sales) AS Total_Sales FROM orders;
 
-- Total Orders 
SELECT COUNT(*) AS Total_Orders FROM orders; 

-- Categories Present 
SELECT DISTINCT Category FROM orders; 

-- Sales by Category 
SELECT Category, SUM(Sales) AS Total_Sales FROM orders GROUP BY Category; 

-- Top 5 Highest Sales Orders 
SELECT Product Name, Sales FROM orders ORDER BY Sales DESC LIMIT 5;

-- Sales by Region
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top 10 States by Sales
SELECT State,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

-- Average Sales
SELECT AVG(Sales) AS Average_Sales
FROM orders;

-- Top Customers
SELECT `Customer Name`,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Orders per Category
SELECT Category,
       COUNT(*) AS Total_Orders
FROM orders
GROUP BY Category;

-- Top Sub-Categories
SELECT `Sub-Category`,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC
LIMIT 5;