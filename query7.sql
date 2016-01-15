-- Final script, DBCooler returns true

SELECT
	Categories.CategoryName,
    Products.ProductName,
    Products.QuantityPerUnit,
    Products.UnitsInStock
FROM
	Products
LEFT JOIN
	Categories ON Products.CategoryID = Categories.CategoryID
WHERE
	Products.Discontinued = 0
ORDER BY CategoryName, ProductName
	
