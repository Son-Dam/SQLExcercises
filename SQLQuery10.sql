SELECT TOP (10)
	ResellerName,
	rs.ResellerKey,
	SUM(OrderQuantity) AS TotalQuantity,
	SUM(TotalProductCost) AS TotalOrderCost
FROM
	FactResellerSales rs
JOIN 
	DimReseller r
ON
	rs.ResellerKey = r.ResellerKey
GROUP BY 
	ResellerName,
	rs.ResellerKey
ORDER BY 
	TotalOrderCost DESC