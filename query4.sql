-- Final script, DBCooler returns true

SELECT 
    OrderID,
    SUM(Quantity * OrderDetails.UnitPrice * (1 - OrderDetails.Discount)) AS OrderTotal
FROM
    OrderDetails
GROUP BY OrderID
ORDER BY OrderID
