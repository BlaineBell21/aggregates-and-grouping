Question 1)SELECT ProductName, UnitPrice
           FROM northwind.products
           WHERE UnitPrice = (SELECT MAX(UnitPrice)FROM northwind.products);
Question 2) SELECT OrderID, ShipName, ShipAddress
            FROM northwind.orders
            WHERE ShipVia = (SELECT ShipperID FROM northwind.shippers WHERE ShipperID = 3);
Question 3)SELECT *
           FROM northwind.`order details`
           WHERE ProductID = (SELECT ProductID FROM northwind.products WHERE ProductName LIKE 'Sasquatch Ale');
Question 4)SELECT * FROM northwind.employees
           WHERE EmployeeID = (SELECT EmployeeID FROM northwind.orders WHERE OrderID = 10266);
Question 5)SELECT * FROM northwind.customers
           WHERE CustomerID = (SELECT CustomerID FROM northwind.orders WHERE OrderID = 10266);