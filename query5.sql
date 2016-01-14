SELECT 
	YEAR(orders.ShippedDate) AS YearOfIncome,
    categories.CategoryName,
	products.ProductName,
	(Quantity * products.UnitPrice * (1.0 - orderdetails.Discount)) AS ProductSales
FROM
	orders
INNER JOIN 
	orderdetails ON orderdetails.OrderID = orders.OrderID
INNER JOIN
	products ON products.ProductID = orderdetails.ProductID
INNER JOIN
	categories ON categories.CategoryID = products.CategoryID
GROUP BY YearOfIncome
ORDER BY YearOfIncome