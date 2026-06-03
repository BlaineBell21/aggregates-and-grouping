1. Add a new supplier.

INSERT INTO northwind.suppliers
(
	SupplierID,
    CompanyName,
    ContactName,
    ContactTitle,
    Address,
    City,
    Region,
    PostalCode,
    Country,
    Phone,
    Fax,
    HomePage
)
VALUES
(
	30,
    'Redwood Valley Foods',
    'Emily Carter',
    'Procurement Manager',
    '1450 Harvest Lane',
    'Santa Rosa',
    'CA',
    '95401',
    'USA',
    '(707) 555-0147',
    '(707) 555-0148',
    'https://www.redwoodvalleyfoods.com'
);
2. Add a new product provided by that supplier

INSERT INTO northwind.products
(
    ProductID,
    ProductName,
    SupplierID,
    CategoryID,
    QuantityPerUnit,
    UnitPrice,
    UnitsInStock,
    UnitsOnOrder,
    ReorderLevel,
    Discontinued
)
VALUES
	(78,
	'Redwood Maple Granola',
	30,
	3,
	'12 boxes x 250 g',
	8.99,
	120,
	25,
	20,
	0);
3. List all products and their suppliers.

SELECT np.ProductName, ns.CompanyName FROM northwind.products AS np
JOIN northwind.suppliers AS ns
ON np.SupplierID = ns.SupplierID;

4. Raise the price of your new product by 15%.

UPDATE northwind.products np
SET np.UnitPrice = 10.33
WHERE np.ProductID = 78;

5. List the products and prices of all products from that supplier.

SELECT np.ProductName, np.UnitPrice, ns.CompanyName FROM northwind.suppliers AS ns
JOIN northwind.products AS np
ON ns.SupplierID = np.SupplierID
WHERE ns.SupplierID = 30;

6. Delete the new product.

DELETE FROM northwind.products AS np
WHERE np.ProductID = 78;

7. Delete the new supplier.

DELETE FROM northwind.suppliers AS ns
WHERE SupplierID = 30;

8. List all products.

SELECT * FROM northwind.products;

9. List all suppliers.

SELECT * FROM northwind.suppliers;