Use Ecommerce;


CREATE TABLE Order_History (
    order_id INT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);



INSERT INTO Orders (order_id, customer_id, order_date, amount)
VALUES 
(2, 102, '2026-03-02', 1800.00),
(3, 103, '2026-03-03', 3200.00),
(4, 104, '2026-03-04', 1500.00);



DELIMITER //

CREATE TRIGGER after_order_delete
AFTER DELETE ON Orders
FOR EACH ROW
BEGIN
    INSERT INTO Order_History
    (order_id, customer_id, order_date, amount)
    VALUES
    (OLD.order_id, OLD.customer_id, OLD.order_date, OLD.amount);
END //

DELIMITER ;


DELETE FROM Orders WHERE order_id = 1;