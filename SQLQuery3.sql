SELECT TOP(100) 
	EnglishProductName AS ProductName, ModelName, ProductLine,EnglishProductSubcategoryName,
	EnglishProductSubcategoryName, DealerPrice, ListPrice,Color, EnglishDescription
FROM 
	DimProduct p
JOIN
	DimProductSubcategory psc
ON
	p.ProductSubcategoryKey = psc.ProductSubcategoryKey
JOIN
	DimProductCategory pc
ON 
	psc.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY 
	ListPrice DESC , EnglishProductName
