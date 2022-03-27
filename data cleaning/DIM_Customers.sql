-- Cleansed DIM_Customers Table --
SELECT  [CustomerKey]
     -- ,[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
      ,[FirstName]
     -- ,[MiddleName]
      ,[LastName]
	  , CONCAT (FirstName,' ',LastName) as lastName
     -- ,[NameStyle]
     -- ,[BirthDate]
     -- ,[MaritalStatus]
     -- ,[Suffix]
      , case[Gender] when 'F' then 'Female' when 'M' then 'Male' end  AS Gender
    --  ,[EmailAddress]
    --  ,[YearlyIncome]
    --  ,[TotalChildren]
    --  ,[NumberChildrenAtHome]
     -- ,[EnglishEducation]
     -- ,[SpanishEducation]
    --  ,[FrenchEducation]
     -- ,[EnglishOccupation]
     -- ,[SpanishOccupation]
     -- ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
    --  ,[AddressLine1]
     -- ,[AddressLine2]
     -- ,[Phone]
      ,[DateFirstPurchase]
    --  ,[CommuteDistance]
	,g.city AS [Customer City] -- Joined in Customer City from Geography Table
  FROM [AdventureWorksDW2017].[dbo].[DimCustomer] c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC