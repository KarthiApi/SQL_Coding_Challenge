USE ECOMMERCE;

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(150) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    sale_date DATE NOT NULL
);

INSERT INTO Sales (product_name, quantity, price, sale_date) VALUES
('Laptop', 2, 85000, '2026-02-01'),
('Mobile', 5, 25000, '2026-02-02'),
('Headphones', 10, 5000, '2026-02-03'),
('Smart TV', 1, 60000, '2026-02-04'),
('Washing Machine', 3, 45000, '2026-02-05');


SELECT COUNT(*) AS total_sales
FROM Sales;

SELECT SUM(quantity * price) AS total_revenue
FROM Sales;


SELECT AVG(quantity * price) AS average_sale_amount
FROM Sales;

SELECT MAX(quantity * price) AS highest_sale
FROM Sales;


SELECT MIN(quantity * price) AS lowest_sale
FROM Sales;


SELECT 
    COUNT(*) AS total_sales,
    SUM(quantity * price) AS total_revenue,
    AVG(quantity * price) AS average_sale,
    MAX(quantity * price) AS highest_sale,
    MIN(quantity * price) AS lowest_sale
FROM Sales;