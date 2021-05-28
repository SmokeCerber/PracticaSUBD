1.
SELECT EmailAddress,PersonType, FirstName, LastName
FROM 
Person.Person AS P
INNER JOIN
Person.EmailAddress AS EA
ON P.BusinessEntityID=EA.BusinessEntityID
2.
SELECT Name, ActualCost
FROM 
Production.Product AS PP
LEFT OUTER JOIN Production.WorkOrderRouting AS Work
ON PP.ProductID=Work.ProductID
3.
SELECT PPS.Name, PP.Name
FROM Production.ProductSubcategory AS PPS
RIGHT OUTER JOIN Production.Product AS PP
ON PPS.ProductSubcategoryID=PP.ProductSubcategoryID
4.
SELECT DISTINCT P.ProductSubcategoryID, P.StandardCost
FROM Production.Product AS P
INNER JOIN Production.Product AS PR
ON P.ProductSubcategoryID=PR.ProductSubcategoryID
AND P.StandardCost<>PR.StandardCost 
ORDER BY P.ProductSubcategoryID
5.
SELECT DISTINCT P.ProductSubcategoryID, P.StandardCost
FROM Production.Product AS P
INNER JOIN Production.Product AS PR
ON P.StandardCost=PR.StandardCost 
AND P.ProductSubcategoryID<>PR.ProductSubcategoryID
ORDER BY P.StandardCost
6.
SELECT DISTINCT SO.Type, SO.MinQty
FROM Sales.SpecialOffer AS SO
INNER JOIN Sales.SpecialOffer AS S
ON SO.Type=S.Type
AND SO.MinQty<>S.MinQty
WHERE SO.MinQty>=15 AND S.MinQty>=15
ORDER BY SO.Type
7.
SELECT * 
FROM Person.BusinessEntityAddress
UNION
SELECT *
FROM Person.BusinessEntityContact
8.
SELECT BusinessEntityID
FROM Sales.SalesPerson
EXCEPT
SELECT BusinessEntityID
FROM Sales.Store
