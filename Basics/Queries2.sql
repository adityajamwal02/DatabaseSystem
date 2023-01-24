INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (6, 'Mubashir', 'Hassan', '2320 Swimming Drive', 'Lahore', '54000', 'Pakistan');

Select CustomerName, ContactName, Address
From Customers
Where Address IS NULL

update Customers
set ContactName='Mubashir Hassan',City='Lahore'
Where CustomerID=1

DELETE FROM Customers 
WHERE CustomerName='Around the Horn'

SELECT MIN(Price) As SmallestPrice FROM Products

Select max(price) FROM Products

Select Count(ProductID) From Products

Select Avg(Price) From Products

Select Sum(Price) From Products

Select * 
From Customers
Where Country IN ('Germany', 'UK')
