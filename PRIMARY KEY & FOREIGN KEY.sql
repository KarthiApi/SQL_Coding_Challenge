CREATE DATABASE OnlineBookstore;
USE OnlineBookstore;

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    BookID INT,
    Quantity INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);