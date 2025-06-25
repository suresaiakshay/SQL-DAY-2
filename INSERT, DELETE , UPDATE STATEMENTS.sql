INSERT INTO Customers VALUES 
('Alice Smith', 'alice@example.com', '1234567890', '123 Main St'),
('Bob Johnson', 'bob@example.com', NULL, '456 Maple Ave'), 
('Charlie Lee', 'charlie@example.com', '9876543210', NULL); 

INSERT INTO Products VALUES 
('Laptop', 'Gaming Laptop', 999.99, 10),
('Smartphone', 'Latest model smartphone', 699.50, 20),
('Headphones', NULL, 149.75, 15); 

INSERT INTO Orders VALUES 
(1, '2025-06-20', 1699.49),
(2, '2025-06-21', 849.25);

INSERT INTO Order_Items VALUES 
(1, 1, 1, 999.99),
(1, 2, 1, 699.50),
(2, 3, 1, 149.75);

INSERT INTO Payments VALUES 
(1, '2025-06-21', 1699.49, 'Credit Card'),
(2, '2025-06-22', 849.25, NULL);  



UPDATE Customers
SET address = '789 Elm St'
WHERE customer_id = 3;

UPDATE Products
SET stock_quantity = stock_quantity - 1
WHERE product_id = 3;

UPDATE Customers
SET phone = '0000000000'
WHERE phone IS NULL;


DELETE FROM Products
WHERE stock_quantity = 0;

DELETE FROM Customers
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id FROM Orders
);

DELETE FROM Order_Items WHERE order_id = 2;
DELETE FROM Orders WHERE order_id = 2;


