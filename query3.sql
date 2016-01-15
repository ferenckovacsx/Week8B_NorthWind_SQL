-- Not ready

SELECT 
    orders.ShipName,
    orders.ShipAddress,
    orders.ShipCity,
    orders.ShipRegion,
    orders.ShipPostalCode,
    orders.ShipCountry,
    customers.CustomerID,
    customers.CompanyName AS CustomerName,
    customers.Address,
    customers.City,
    customers.Region,
    customers.PostalCode,
    customers.Country,
    CONCAT(employees.LastName,' ',employees.FirstName) AS Salesperson,
    orders.OrderID,
    orders.OrderDate,
    orders.RequiredDate,
    orders.ShippedDate,
    orders.ShipName,
    products.ProductID,
    products.ProductName,
    orderdetails.UnitPrice,
    orderdetails.Quantity,
    orderdetails.Discount,
    SUM((products.UnitPrice - orderdetails.Discount) * Quantity) AS Total,
    orders.Freight
FROM
    orders,
	customers,
    employees, 
    products,
    orderdetails

    
    
