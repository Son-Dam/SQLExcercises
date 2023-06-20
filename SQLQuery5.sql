SELECT 
	i.ProductKey,
	EnglishProductName,
	ModelName,
	EnglishProductCategoryName AS ProductCategoryName,
	EnglishProductSubcategoryName AS ProductSubCategoryName,
	UnitsBalance,
	UnitCost

FROM 
	FactProductInventory i
JOIN 
	DimProduct p
ON 
	i.ProductKey = p.ProductKey
JOIN 
	DimDate d
ON
	i.DateKey = d.DateKey
JOIN 
	DimProductSubCategory psc
ON 
	p.ProductSubcategoryKey = psc.ProductSubcategoryKey
JOIN 
	DimProductCategory pc 
ON
	psc.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY FullDateAlternateKey DESC,	i.ProductKey

	

