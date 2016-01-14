SELECT City, CompanyName, ContactName
FROM customers
UNION
SELECT City, CompanyName, ContactName
FROM suppliers
ORDER BY City