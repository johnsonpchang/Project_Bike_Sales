-- Cleansed DIM_Promotion Table --

SELECT [PromotionKey]
      --,[PromotionAlternateKey]
      ,[EnglishPromotionName] as [Promotion Name]
      --,[SpanishPromotionName]
      --,[FrenchPromotionName]
      ,[DiscountPct]
      ,[EnglishPromotionType] as [Promotion Type]
      --,[SpanishPromotionType]
      --,[FrenchPromotionType]
      --,[EnglishPromotionCategory]
      --,[SpanishPromotionCategory]
      --,[FrenchPromotionCategory]
      --,[StartDate]
      --,[EndDate]
      --,[MinQty]
      --,[MaxQty]
  FROM [AdventureWorksDW2019].[dbo].[DimPromotion]