SELECT 
    OrderID,
    ((products.UnitPrice - orderdetails.Discount) * Quantity) AS OrderTotal
FROM
    orderdetails
LEFT JOIN
    products ON orderdetails.ProductID = products.ProductID
ORDER BY OrderID
