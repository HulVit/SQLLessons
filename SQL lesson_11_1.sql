-- SELECT * FROM Sales.OrderLines
-- WHERE UnitPrice > 100;
-- SELECT TOP (100) OrderID, StockItemID, [Description], Quantity, UnitPrice FROM Sales.OrderLines;
-- SELECT TOP (100) OrderID, StockItemID, [Description], Quantity, UnitPrice, (UnitPrice * Quantity) AS Summ FROM Sales.OrderLines;
-- SELECT TOP (100) ol.OrderID, ol.Description, ol.Quantity, ol.UnitPrice, si.StockItemName FROM Sales.OrderLines ol, Warehouse.StockItems si
-- WHERE ol.StockItemID = si.StockItemID;
SELECT COUNT(*) FROM Sales.OrderLines ol, Warehouse.StockItems si
WHERE ol.StockItemID = si.StockItemID;