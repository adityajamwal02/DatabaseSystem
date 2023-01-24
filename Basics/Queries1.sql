SELECT * FROM CUSTOMERS

SELECT CustomerName, City FROM Customers

SELECT DISTINCT COUNTRY FROM CUSTOMERS

SELECT *
FROM Customers
WHERE Country="Mexico"

Select *
From Customers
Where CustomerID=1;

Select * 
From Customers
Where Country="Germany" AND City="Berlin"

Select *
From Customers
Where Country="Germany" OR Country="UK"

Select * 
From Customers
Where (Country="Germany" AND (City="Berlin" OR City="Hanover"))

Select * 
From Customers
Where NOT (Country="Germany" OR Country="UK")

Select * 
From Customers
ORDER BY Country 

Select *
From Customers
Order by Country Desc

Select * 
From Customers 
Order by Country, CustomerName

Select *
From Customers 
Order by Country ASC, CustomerName DESC
