-- Final script, DBCooler returns true

SELECT 
    City, CompanyName, ContactName, 'Customer' AS Relationship
FROM
    Customers 
UNION SELECT 
    City, CompanyName, ContactName, 'Supplier'
FROM
    Suppliers
ORDER BY City, ContactName
