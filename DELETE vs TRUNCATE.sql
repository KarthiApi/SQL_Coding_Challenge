USE OnlineBookstore;

INSERT INTO Books (BookID, Title, Author, ISBN, Price)
VALUES 
(1, 'SQL Basics', 'John Doe', '9781234567890', 499.00),
(2, 'Advanced SQL', 'Jane Smith', '9781234567891', 599.00),
(3, 'Database Design', 'David Lee', '9781234567892', 699.00),
(4, 'Data Analyst', 'Lee', '9781234567893', 799.00);

INSERT INTO Orders (OrderID, OrderDate, BookID, Quantity)
VALUES 
(101, '2026-02-28', 1, 2),
(102, '2026-02-27',2, 4),
(103, '2026-02-26',3, 5),
(104, '2026-02-25',4, 6);

DELETE FROM Orders
WHERE OrderID = 101;

TRUNCATE TABLE Orders;

