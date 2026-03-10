CREATE DATABASE BankDB;

USE BankDB;

CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    account_holder VARCHAR(100) NOT NULL,
    balance DECIMAL(12,2) NOT NULL
);

INSERT INTO Accounts (account_id, account_holder, balance)
VALUES 
(101, 'Karthi', 20000.00),
(102, 'Rahul', 15000.00);


START TRANSACTION;

-- Deduct amount from sender
UPDATE Accounts
SET balance = balance - 5000
WHERE account_id = 101;

-- Create savepoint after deduction
SAVEPOINT after_debit;

-- Add amount to receiver
UPDATE Accounts
SET balance = balance + 5000
WHERE account_id = 102;

-- If everything is successful
COMMIT;

ROLLBACK TO after_debit;