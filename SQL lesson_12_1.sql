USE WideWorldImporters;

-- SELECT * FROM Sales.Orders;
--1
-- SELECT * FROM Sales.Customers WHERE CustomerName LIKE 'Wingtip Toys %'
--2
-- SELECT so.OrderID, sc.CustomerName, so.OrderDate, /*sol.Quantity, sol.UnitPrice, */
--        sum(sol.Quantity * sol.UnitPrice)Total
-- FROM Sales.Orders so, Sales.OrderLines sol, Sales.Customers sc
-- WHERE so.OrderID = sol.OrderID AND so.CustomerID = sc.CustomerID
-- GROUP BY so.OrderID, sc.CustomerName, so.OrderDate
-- ORDER BY so.OrderID
--3
-- SELECT so.OrderID, sc.CustomerName, so.OrderDate, /*sol.Quantity, sol.UnitPrice, */
--        sum(sol.Quantity * sol.UnitPrice)Total
-- FROM Sales.Orders so, Sales.OrderLines sol, Sales.Customers sc
-- WHERE 
--    so.OrderID = sol.OrderID 
--    AND so.CustomerID = sc.CustomerID 
--    AND (so.OrderDate BETWEEN '2016-07-01' AND '2016-07-31')
-- GROUP BY so.OrderID, sc.CustomerName, so.OrderDate
-- ORDER BY OrderDate;
--4
-- SELECT sc.CustomerName, sum(sol.Quantity * sol.UnitPrice)Total
-- FROM Sales.Orders so, Sales.OrderLines sol, Sales.Customers sc
-- WHERE so.OrderID = sol.OrderID AND so.CustomerID = sc.CustomerID
-- GROUP BY sc.CustomerName
-- ORDER BY Total DESC;
--5
-- SELECT TOP 20 sc.CustomerName, sum(sol.Quantity * sol.UnitPrice)Total
-- FROM Sales.Orders so, Sales.OrderLines sol, Sales.Customers sc
-- WHERE so.OrderID = sol.OrderID AND so.CustomerID = sc.CustomerID
-- GROUP BY sc.CustomerName
-- ORDER BY Total DESC;
--6
SELECT AVG(total) FROM (
SELECT so.OrderID, sc.CustomerName, so.OrderDate, /*sol.Quantity, sol.UnitPrice, */
       sum(sol.Quantity * sol.UnitPrice)Total
FROM Sales.Orders so, Sales.OrderLines sol, Sales.Customers sc
WHERE 
   so.OrderID = sol.OrderID 
   AND so.CustomerID = sc.CustomerID 
GROUP BY so.OrderID, sc.CustomerName, so.OrderDate ) res