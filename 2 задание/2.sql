1.
SELECT MAX(ListPrice) AS MAX
FROM Production.Product
2.
SELECT MIN(Weight) AS Mini
FROM Production.Product
WHERE Weight IS NOT NULL
3.
SELECT Gender, AVG(DATEDIFF(YEAR, BirthDate, GETDATE())) as WWW
FROM HumanResources.Employee
WHERE Gender IS NOT NULL AND BirthDate IS NOT NULL
GROUP BY Gender
4.
SELECT CountryRegionCode, COUNT(Name) as Count
FROM Person.StateProvince
WHERE CountryRegionCode IS NOT NULL
GROUP BY CountryRegionCode
HAVING COUNT(Name) = 1
5.
SELECT BusinessEntityID, LastReceiptDate, AVG(StandardPrice) as Price
FROM Purchasing.ProductVendor
GROUP BY ROLLUP(BusinessEntityID, LastReceiptDate);
