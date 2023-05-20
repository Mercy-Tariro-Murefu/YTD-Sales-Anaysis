SELECT
   so.orderNumber,
   so.[Sales Channel],
   so.OrderDate,
   so.[Order Quantity],
   so.[Unit Cost],
   so.[Unit Price],
   so.[Discount Applied],
   so.[Unit Price]-([Unit Price]*[Discount Applied]) AS after_discount_unit_price,
  SUM([Unit Price]-([Unit Price]*[Discount Applied])) * so. [Order Quantity] AS Total_sales,
  SUM( ([Unit Price]-([Unit Price]*[Discount Applied]) - so.[Unit Cost])* so. [Order Quantity]) AS Total_profit,
  sl.[City Name],
  sl.State,
  sl.StateCode,
   sl.AreaCode,
  sl.Latitude,
  sl.Longitude,
  sl.Population,
  p.[Product Name],
  r.Region
FROM ['Sales Orders Sheet$'] AS so
JOIN ['Store Locations Sheet$'] AS sl
ON sl._StoreID = so._StoreID
JOIN ['Products Sheet$'] AS p
ON p._ProductID = so._ProductID
JOIN [dbo].['Regions Sheet$'] AS r
ON r.StateCode = sl.StateCode
GROUP BY  
   so.orderNumber,
   so.[Sales Channel],
   so.OrderDate,
   so.[Order Quantity],
   so.[Discount Applied],
   so.[Unit Price],
   so.[Unit Cost],
   sl.[City Name],
  sl.[City Name],
  sl.State,
  sl.StateCode,
  sl.AreaCode,
  sl.Latitude,
  sl.Longitude,
  sl.Population,
  p.[Product Name],
  r.Region




