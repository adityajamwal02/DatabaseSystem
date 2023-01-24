Select 20+30

Select 30-20

Select 40/20

Select 30*20

SELECT * 
FROM Products 
WHERE Price=10

SELECT * 
FROM Products 
WHERE Price<=18

Select * 
From Products
Where Price Between 10 and 20

Select * 
From Customers 
Where CustomerName LIKE 'a%'

SELECT *
FROM Customers
WHERE CustomerName LIKE '%a'

SELECT * 
FROM Customers 
WHERE CustomerName LIKE '%or%'

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%'

SELECT * FROM Customers
WHERE NOT CustomerName LIKE 'a%' 
OR
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%'; 

SELECT * 
FROM Customers 
WHERE City LIKE 'ber%'

SELECT * 
FROM Customers
WHERE City LIKE '_ondon'

SELECT * FROM Customers 
WHERE City LIKE '[bsp]%'

SELECT * FROM Customers
WHERE City LIKE '[!bsp]%'


SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID


SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Orders.CustomerID=Customers.CustomerID


SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders 
RIGHT JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
ORDER BY Orders.OrderID


SELECT Customers.CustomerName, Orders.OrderID 
FROM Customers 
FULL OUTER JOIN Orders ON Orders.CustomerID = Customers.CustomerID
ORDER BY Customers.CustomerName

SELECT Country FROM Customers
union
SELECT Country FROM Suppliers
ORDER BY City


SELECT Country FROM Customers
UNION ALL
SELECT Country FROM Suppliers


SELECT Count(CustomerID), Country
FROM Customers
GROUP BY Country


SELECT ProductName 
FROM Products 
WHERE ProductID=ANY
(SELECT ProductID FROM OrderDetails WHERE Quantity=10)

SELECT ProductName 
FROM Products 
WHERE ProductID=ALL
(SELECT ProductID FROM OrderDetails WHERE Quantity=10)

