SELECT 
    OrderID,
    Products.ProductID,
    ProductName,
    OrderDetails.UnitPrice,
    Quantity,
    Discount,
    SUM(Quantity * Products.UnitPrice * (1.0 - OrderDetails.Discount)) AS Total
FROM
    OrderDetails
LEFT JOIN
    Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderID