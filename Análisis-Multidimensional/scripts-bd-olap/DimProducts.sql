select count (*) from Production.Product p

SELECT        prod.ProductID, prod.Name AS ProductName, prod.ProductNumber, prod.MakeFlag, prod.FinishedGoodsFlag, prod.Color, prod.StandardCost, prod.ListPrice, prod.Size, prod.SizeUnitMeasureCode, prod.WeightUnitMeasureCode, 
                         prod.Weight, prod.Class, prod.Style, prodsc.Name AS SubCategoryName, prodcat.Name AS CategoryName, prodmod.Name AS ModelName, um1.Name AS SizeName, um2.Name AS WeightName
INTO MyDb.Dims.Product
FROM            Production.ProductCategory AS prodcat INNER JOIN
                         Production.ProductSubcategory AS prodsc ON prodcat.ProductCategoryID = prodsc.ProductCategoryID RIGHT OUTER JOIN
                         Production.Product AS prod ON prodsc.ProductSubcategoryID = prod.ProductSubcategoryID LEFT OUTER JOIN
                         Production.ProductModel AS prodmod ON prod.ProductModelID = prodmod.ProductModelID LEFT OUTER JOIN
                         Production.UnitMeasure AS um2 ON prod.WeightUnitMeasureCode = um2.UnitMeasureCode LEFT OUTER JOIN
                         Production.UnitMeasure AS um1 ON prod.SizeUnitMeasureCode = um1.UnitMeasureCode