-- Cleansed DIM_Customer Table --

SELECT c.CustomerKey as CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.FirstName as [First Name]
      --,c.MiddleName as [Middle Name]
      ,c.LastName as [Last Name]
	  , c.FirstName + ' ' + c.LastName as [Full Name]
      --,[NameStyle]
      --,[BirthDate]
	  ,LEFT(c.BirthDate, 4) as BirthYear
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.Gender WHEN 'M' THEN 'Male'
		WHEN 'F' THEN 'Female'
		END as Gender     --  Distinguishing Male and Female from M and F
      ,[EmailAddress] as [Email]
      ,[YearlyIncome] as [Annual Income]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      ,[EnglishEducation] as [Education Degree]
      --,[SpanishEducation]
      --,[FrenchEducation]
      ,[EnglishOccupation] as Occupation
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      --,[CommuteDistance]
	  ,g.City as CustomerCity  -- Joined in Customer City from DimGeography Table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
	LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] as g
	ON c.GeographyKey = g.GeographyKey
ORDER BY c.CustomerKey  -- Ordered List by CustomerKey