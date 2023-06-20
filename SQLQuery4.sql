SELECT * FROM(
	SELECT 
		AccountDescription, OrganizationName, Amount
	FROM
		DimOrganization o
	JOIN 
		FactFinance f
	ON 
		o.OrganizationKey = f.OrganizationKey
	JOIN
		DimAccount a
	ON
		a.AccountKey = f.AccountKey
	WHERE
		o.OrganizationKey in(11,12,13)
	
) t
PIVOT(
	SUM(Amount)
	FOR OrganizationName IN(
		[France],
		[Germany],
		[Australia]
	)
) AS pivot_table
ORDER BY AccountDescription

