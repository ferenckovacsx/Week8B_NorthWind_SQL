-- Final script, DBCooler returns true

SELECT 
	ProductName,
    UnitPrice
FROM
	Products
WHERE 
	UnitPrice > (SELECT AVG(UnitPrice) FROM Products) 
ORDER BY 
	UnitPrice
