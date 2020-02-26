/*1. Write a query that returns a count of detail lines in the Sales.SalesOrderDetail table by
SalesOrderID. Include only those sales that have more than three detail lines.*/
SELECT COUNT(*) AS CountOfDetailLines, SalesOrderID
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING COUNT(*) > 3;


/*2. Write a query that creates a sum of the LineTotal in the Sales.SalesOrderDetail table grouped
by the SalesOrderID. Include only those rows where the sum exceeds 1,000.*/
SELECT SUM(LineTotal) AS SumTotal, SalesOrderID
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(LineTotal) > 1000;




/*3. Write a query that groups the products by ProductModelID along with a count. Display the
rows that have a count that equals 1.*/