Question 1) SELECT ProductID, ProductName, UnitPrice
            FROM northwind.products AS np
            JOIN northwind.suppliers AS ns
            ON np.SupplierID = ns.SupplierID;
Question 2)SELECT np.ProductID, np.ProductName, np.UnitPrice, ns.CompanyName
           FROM northwind.products AS np
           JOIN northwind.suppliers AS ns
           ON np.SupplierID = ns.SupplierID
           WHERE np.UnitPrice >= 75;
Question 3)SELECT np.ProductID, np.ProductName, nc.CategoryName, np.UnitPrice, ns.CompanyName
           FROM northwind.products AS np
           JOIN northwind.suppliers AS ns
           ON np.SupplierID = ns.SupplierID
           JOIN northwind.categories AS nc
            ON np.CategoryID = nc.CategoryID;
Question 4)SELECT np.ProductName, nc.CategoryName, np.UnitPrice
           FROM northwind.products AS np
           JOIN northwind.categories AS nc
           ON np.CategoryID = nc.CategoryID
           WHERE np.UnitPrice = (SELECT MAX(UnitPrice) FROM northwind.products);
Question 5)SELECT orders.OrderID, orders.ShipName, orders.ShipAddress, shipper.CompanyName
           FROM northwind.orders AS orders
           JOIN northwind.shippers AS shipper
           ON orders.ShipVia = shipper.ShipperID
           WHERE ShipCountry LIKE 'Germany';
Question 6)SELECT orders.OrderID, orders.OrderDate, orders.ShipName, orders.ShipAddress
           FROM northwind.orders AS orders
           JOIN northwind.shippers AS shipper
           ON orders.ShipVia = shipper.ShipperID
           JOIN northwind.`order details` AS details
           ON orders.OrderID = details.OrderID
           JOIN northwind.products AS products
           ON products.ProductID = details.ProductID
           WHERE  products.ProductName LIKE 'Sasquatch Ale' ;