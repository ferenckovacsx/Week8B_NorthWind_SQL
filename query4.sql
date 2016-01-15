SELECT 
    OrderID,
    SUM(Quantity * OrderDetails.UnitPrice * (1 - OrderDetails.Discount)) AS OrderTotal
FROM
    OrderDetails
LEFT JOIN
    Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderID
ORDER BY OrderID
