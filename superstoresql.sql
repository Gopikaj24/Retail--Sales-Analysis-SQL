Use superstore;
SHOW TABLES;
RENAME TABLE `sample - superstore` TO superstore;
SHOW TABLES;
USE superstore;
--Total sales and total profit by category
DESCRIBE superstore;
SELECT Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit FROM superstore GROUP BY Category;
--Top 10 Products by revenue
Select `Product Name`, ROUND(SUM(Sales),2) AS Total_Revenue From superstore GROUP BY `Product Name` Order by Total_Revenue DESC LIMIT 10;
--Which region is most profittable
SELECT Region, ROUND(SUM(Profit), 2) AS Total_Profit FROM superstore GROUP BY Region ORDER BY Total_Profit DESC;
USE superstore;
--Customer Segment Performance
SELECT Segment, ROUND(Sum(Sales),2) AS Total_sales, Round(Sum(Profit),2) AS Total_profit From Superstore GROUP BY Segment Order BY Total_Sales DESC;
--States with Losses
SELECT State, ROUND(SUM(Profit),2) AS Tot_Profit From Superstore Group By State HAVING SUM(Profit) < 0 ORDER BY Tot_Profit ASC;
--Top 5 Customers by Sales
SELECT `Customer Name`, Round(SUM(Sales),2) AS Tot_sales From superstore Group BY `Customer Name` Order By Tot_Sales DESC Limit 5;
--Discount Impact on Profit
Select Discount, ROUND(SUM(Sales),2) As Tot_Sales, ROUND(SUM(Profit),2) AS Tot_Profit From superstore Group By Discount Order By Discount;
