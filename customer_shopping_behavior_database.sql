CREATE DATABASE customer_shopping_behavior;
USE customer_shopping_behavior;
SELECT 1;
SELECT * FROM customer LIMIT 10;
-- Total Revenue
SELECT SUM(Purchase_Amount_USD) AS Total_Revenue FROM customer;

-- Revenue by Category
SELECT Category, SUM(Purchase_Amount_USD) AS Revenue
FROM customer
GROUP BY Category
ORDER BY Revenue DESC;

-- Avg Spend by Gender
SELECT Gender, AVG(Purchase_Amount_USD) AS Avg_Spend
FROM customer
GROUP BY Gender;

-- Top Locations
SELECT Location, COUNT(*) AS Customers
FROM customer
GROUP BY Location
ORDER BY Customers DESC;


