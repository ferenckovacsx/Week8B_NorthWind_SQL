SELECT 
    OrderDetails.OrderID,
    Products.ProductID,
    Products.ProductName,
    OrderDetails.UnitPrice,
    OrderDetails.Quantity,
    OrderDetails.Discount,
    (OrderDetails.Quantity * OrderDetails.UnitPrice * (1.0 - OrderDetails.Discount)) AS Total
FROM
    OrderDetails
LEFT JOIN
    Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderID, ProductID
