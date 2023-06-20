SELECT 	
	Concat(FirstName,' ',MiddleName,' ',LastName) AS FullName,
	BirthDate,
	CASE Gender 
		WHEN  'M' THEN 'Male' 
		WHEN 'F' THEN 'Female' 
	END AS Gender,
	EmailAddress, 
	EnglishEducation AS [Education (English)], 
	Phone,
	AddressLine1,
	AddressLine2		
FROM 
	DimCustomer c
JOIN 
	DimGeography 
ON 
	c.GeographyKey = DimGeography.GeographyKey
WHERE 
	CountryRegionCode = 'GB'