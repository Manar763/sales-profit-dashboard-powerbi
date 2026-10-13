-- Restore DB
USE AdventureWorks2019

Select * From Sales.SalesOrderHeader
-- Create Database XXX
-- Create Schema Sales
-- Create table Sales.Orders ()

Use AdventureWorks2019 

Select OH.[SalesOrderID],[OrderDate],[DueDate],[ShipDate]
      ,[Status],[OnlineOrderFlag],[CustomerID],[SalesPersonID]
      ,OH.[TerritoryID], ST.[Name] Territory_Name,ST.[Group] Territory_Group
      ,OH.[ShipMethodID], SM.Name ShipMethod_Name
      ,[SubTotal],[TaxAmt],[Freight],[TotalDue]
      ,[SalesOrderDetailID],[OrderQty],OD.[ProductID] , pr.[Name] product_name , Sub.[Name] Sub_Name , PC.[Name] Catergory_Name
      ,[UnitPrice],[LineTotal]

From Sales.SalesOrderHeader OH
JOIN Sales.SalesOrderDetail OD
ON OH.SalesOrderID = OD.SalesOrderID
JOIN Sales.SalesTerritory ST
ON OH.TerritoryID = ST.TerritoryID
JOIN Purchasing.ShipMethod SM
ON SM.ShipMethodID = OH.ShipMethodID
join [Production].[Product] Pr
on Pr.ProductID = OD.ProductID
join [Production].[ProductSubcategory] Sub
on Sub.ProductSubcategoryID = PR.ProductSubcategoryID
join [Production].[ProductCategory] PC
on PC.ProductCategoryID = Sub.ProductCategoryID

SELECT Sales.SalesOrderHeader.SalesOrderID, Sales.SalesOrderHeader.OrderDate, Sales.SalesOrderHeader.DueDate, Sales.SalesOrderHeader.ShipDate, Sales.SalesOrderHeader.Status, Sales.SalesOrderHeader.OnlineOrderFlag, 
                  Sales.SalesOrderHeader.CustomerID, Sales.SalesOrderHeader.SalesPersonID, Sales.SalesOrderHeader.TerritoryID, Sales.SalesOrderHeader.ShipMethodID, Sales.SalesOrderHeader.SubTotal, Sales.SalesOrderHeader.Freight, 
                  Sales.SalesOrderHeader.TaxAmt, Sales.SalesOrderHeader.TotalDue, Sales.SalesOrderDetail.SalesOrderDetailID, Sales.SalesOrderDetail.OrderQty, Sales.SalesOrderDetail.ProductID, Sales.SalesOrderDetail.UnitPrice, 
                  Sales.SalesOrderDetail.LineTotal, Purchasing.ShipMethod.Name, Sales.SalesTerritory.Name AS Expr1, Sales.SalesTerritory.[Group], Production.Product.Name AS Expr2, Production.ProductSubcategory.Name AS Expr3, 
                  Production.ProductCategory.Name AS Expr4
FROM     Production.Product INNER JOIN
                  Production.ProductSubcategory ON Production.Product.ProductSubcategoryID = Production.ProductSubcategory.ProductSubcategoryID INNER JOIN
                  Production.ProductCategory ON Production.ProductSubcategory.ProductCategoryID = Production.ProductCategory.ProductCategoryID INNER JOIN
                  Sales.SalesOrderDetail ON Production.Product.ProductID = Sales.SalesOrderDetail.ProductID INNER JOIN
                  Sales.SalesOrderHeader ON Sales.SalesOrderDetail.SalesOrderID = Sales.SalesOrderHeader.SalesOrderID AND Sales.SalesOrderDetail.SalesOrderID = Sales.SalesOrderHeader.SalesOrderID AND 
                  Sales.SalesOrderDetail.SalesOrderID = Sales.SalesOrderHeader.SalesOrderID INNER JOIN
                  Sales.SalesTerritory ON Sales.SalesOrderHeader.TerritoryID = Sales.SalesTerritory.TerritoryID AND Sales.SalesOrderHeader.TerritoryID = Sales.SalesTerritory.TerritoryID AND 
                  Sales.SalesOrderHeader.TerritoryID = Sales.SalesTerritory.TerritoryID INNER JOIN
                  Purchasing.ShipMethod ON Sales.SalesOrderHeader.ShipMethodID = Purchasing.ShipMethod.ShipMethodID AND Sales.SalesOrderHeader.ShipMethodID = Purchasing.ShipMethod.ShipMethodID AND 
                  Sales.SalesOrderHeader.ShipMethodID = Purchasing.ShipMethod.ShipMethodID


## Database Objects:
1- Tables
2- Views
Select * From V1


Create View V1
AS
Select OH.[SalesOrderID],[OrderDate],[DueDate],[ShipDate]
      ,[Status],[OnlineOrderFlag],[CustomerID],[SalesPersonID]
      ,OH.[TerritoryID], ST.[Name] Territory_Name,ST.[Group] Territory_Group
      ,OH.[ShipMethodID], SM.Name ShipMethod_Name
      ,[SubTotal],[TaxAmt],[Freight],[TotalDue]
      ,[SalesOrderDetailID],[OrderQty],OD.[ProductID] , pr.[Name] product_name , Sub.[Name] Sub_Name , PC.[Name] Catergory_Name
      ,[UnitPrice],[LineTotal]

From Sales.SalesOrderHeader OH
JOIN Sales.SalesOrderDetail OD
ON OH.SalesOrderID = OD.SalesOrderID
JOIN Sales.SalesTerritory ST
ON OH.TerritoryID = ST.TerritoryID
JOIN Purchasing.ShipMethod SM
ON SM.ShipMethodID = OH.ShipMethodID
join [Production].[Product] Pr
on Pr.ProductID = OD.ProductID
join [Production].[ProductSubcategory] Sub
on Sub.ProductSubcategoryID = PR.ProductSubcategoryID
join [Production].[ProductCategory] PC
on PC.ProductCategoryID = Sub.ProductCategoryID

Select * From V1
