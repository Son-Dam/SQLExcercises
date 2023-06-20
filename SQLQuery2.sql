SELECT 
	EnglishCountryRegionName AS CountryName, 
	COUNT(*) AS TotalCustomer
FROM 
	DimGeography g
JOIN 
	DimCustomer c
ON 
	g.GeographyKey = c.GeographyKey
GROUP BY 
	EnglishCountryRegionName
