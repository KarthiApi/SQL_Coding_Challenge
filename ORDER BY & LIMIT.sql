CREATE DATABASE ECOMMERCE;
USE ECOMMERCE;

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(100),
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Products (product_name, category, price, stock_quantity) VALUES
('Laptop Pro', 'Electronics', 85000, 10),
('Smartphone X', 'Electronics', 75000, 25),
('Smart TV', 'Electronics', 60000, 8),
('Washing Machine', 'Home Appliances', 45000, 12),
('Air Conditioner', 'Home Appliances', 52000, 5),
('Headphones', 'Accessories', 5000, 50);


SELECT *
FROM Products
ORDER BY price DESC
LIMIT 3;