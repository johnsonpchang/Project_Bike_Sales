-- Cleansed DIM_Product Table --

SELECT [ProductKey]
      ,p.ProductAlternateKey as ProductItemCode
      ,p.ProductSubcategoryKey
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.EnglishProductName as [Product Name]
	  , ps.EnglishProductSubcategoryName as [Product Subcategory]
	  , pc.EnglishProductCategoryName as [Product Category]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.Color as [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.Size as [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.ProductLine as [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.ModelName as [Product Model]
      --,[LargePhoto]
      ,p.EnglishDescription as [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      , ISNULL (p.Status, 'Outdated') as [Product Status]     -- If Status is Null, then we input 'Outdated'
  FROM
	[AdventureWorksDW2019].[dbo].[DimProduct] as p
	LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] as ps
		ON p.ProductSubCategoryKey = ps.ProductSubcategoryKey
	LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] as pc
		ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY p.ProductKey
