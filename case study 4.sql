create database RSIS;
use  RSIS;

 Create Table Products(product_id INT Primary Key Auto_Increment,
     product_name VARCHAR(50) Not Null,
     product_price DECIMAL(10, 2) Not Null, 
     Check (product_price > 0),
     Stock INT Not Null,
     Check (Stock >= 0)
     );
select*from Products;

INSERT INTO Products (product_name, product_price, stock) VALUES
('Laptop', 999.99, 10),
('Smartphone', 499.99, 25),
('Tablet', 299.99, 15),
('Headphones', 89.99, 50),
('Smartwatch', 199.99, 20);
select*from Products;

Create Table Suppliers(id INT Primary Key Auto_Increment,
     supplier_name VARCHAR(50) Not Null,
     contact VARCHAR(50)
);
select*from Suppliers;

INSERT INTO Suppliers (supplier_name, contact) VALUES
('Global Tech Supplies', 'contact@globaltech.com'),
('Prime Electronics', 'info@primeelectronics.com'),
('NextGen Gadgets', 'support@nextgengadgets.com'),
('Innovative Solutions', 'sales@innovativesolutions.com'),
('FutureTech Distributors', 'inquiries@futuretech.com');
select*from Suppliers;

Create Table Sales (
     id INT Primary Key Auto_Increment,
     product_id INT,
     date DATE Not Null,
     Quantity INT Not Null,
     Check (Quantity > 0),
     total_price DECIMAL(10, 2) Not Null,
	 Foreign Key(product_id) References Products(product_id)
     );
select*from Sales;

INSERT INTO Sales (product_id, date, quantity, total_price) VALUES
(1, '2024-11-01', 5, 4999.95),
(2, '2024-11-02', 3, 1499.97),
(3, '2024-11-03', 10, 2999.90),
(4, '2024-11-04', 20, 1799.80),
(5, '2024-11-05', 2, 399.98);
select*from Sales;

SELECT * FROM Products 
WHERE stock < 10;

SELECT Sales.id, Products.product_name, Sales.total_price
FROM Sales
JOIN Products ON Sales.product_id = Products.product_id;

SELECT Products.product_name, SUM(Sales.total_price) AS total_sales
FROM Sales
JOIN Products ON Sales.product_id = Products.product_id
GROUP BY Products.product_name;

