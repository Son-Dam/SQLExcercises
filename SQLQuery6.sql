SELECT TOP(10)
	EnglishProductName AS ProductName,
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
	DimProductSubCategory psc
ON 
	p.ProductSubcategoryKey = psc.ProductSubcategoryKey
JOIN 
	DimProductCategory pc 
ON
	psc.ProductCategoryKey = pc.ProductCategoryKey
Group by EnglishProductName ,
	ModelName,
	EnglishProductCategoryName ,
	EnglishProductSubcategoryName,
	UnitsBalance,
	UnitCost
	
Order By COUNT(*) DESC,UnitCost DESC



