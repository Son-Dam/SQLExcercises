SELECT TOP(20)
	Concat(FirstName,' ',MiddleName,' ',LastName) AS CustomerName,
	SalesOrderNumber,
	i.CustomerKey,
	SUM(TotalProductCost) AS TotalOrderCost
FROM
	FactInternetSales i
JOIN 
	DimCustomer c
ON 
	i.CustomerKey = c.CustomerKey
GROUP BY 
	FirstName,
	MiddleName,
	LastName,
	i.CustomerKey,
	SalesOrderNumber
ORDER BY TotalOrderCost DESC, CustomerName

