-- Create the database
CREATE DATABASE IF NOT EXISTS joins;

-- Select the database
USE joins;

-- Create the customerTable
CREATE TABLE IF NOT EXISTS customerTable (
    CustomerId VARCHAR(3) NOT NULL,
    CustomerName VARCHAR(10),
    Dep VARCHAR(5),
    PRIMARY KEY (CustomerId)
);

-- Insert sample data into customerTable
INSERT INTO customerTable (CustomerId, CustomerName, Dep)
VALUES
('11A', 'Kamal', 'CS'),
('11B', 'Wimal', 'EC'),
('11C', 'Sumil', 'CS'),
('11D', 'Ranil', 'Eng');

-- Create the orderTables
CREATE TABLE IF NOT EXISTS orderTables (
    OrderId INT(2) NOT NULL,
    CustomerId VARCHAR(3),
    OrderName VARCHAR(10),
    PRIMARY KEY (OrderId),
    FOREIGN KEY (CustomerId) REFERENCES customerTable(CustomerId)
);

-- Insert sample data into orderTables
INSERT INTO orderTables (OrderId, CustomerId, OrderName)
VALUES
(1, '11A', 'Tea'),
(2, '11B', 'Sugar'),
(3, '11C', 'Dhal');

-- Correct INNER JOIN query
SELECT orderTables.OrderId, customerTable.CustomerId, customerTable.CustomerName, orderTables.OrderName
FROM orderTables
INNER JOIN customerTable ON orderTables.CustomerId = customerTable.CustomerId;

-- LEFT JOIN
SELECT orderTables.OrderId, customerTable.CustomerId, customerTable.CustomerName
FROM orderTables
LEFT JOIN customerTable ON orderTables.CustomerId = customerTable.CustomerId;

-- RIGHT JOIN
SELECT orderTables.OrderId, customerTable.CustomerId, customerTable.CustomerName
FROM orderTables
RIGHT JOIN customerTable ON orderTables.CustomerId = customerTable.CustomerId;