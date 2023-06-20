--SELECT * from FactInternetSales

SELECT
	SalesOrderNumber,
	SalesOrderLineNumber,
	Concat(FirstName,' ',MiddleName,' ',LastName) AS CustomerName,
	EnglishProductName,
	OrderQuantity,
	UnitPrice,
	DiscountAmount,
	SalesAmount,
	ProductStandardCost,
	TotalProductCost
FROM 
	FactInternetSales i
JOIN 
	DimCustomer c
ON 
	i.CustomerKey = c.CustomerKey
JOIN
	DimProduct p
ON 
	i.ProductKey = p.ProductKey
WHERE 
	EnglishProductName =  'Road-150 Red, 48'