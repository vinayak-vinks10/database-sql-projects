CREATE DATABASE product_db;
USE product_db;
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price INT,
    stock INT,
    status VARCHAR(20)
);
INSERT INTO products (product_name, category, price, stock, status)
VALUES ('Laptop', 'Electronics', 50000, 10, 'Available'),
    ('Mouse', 'Electronics', 500, 50, 'Available'),
    ('Chair', 'Furniture', 3000, 20, 'Available'),
    ('Table', 'Furniture', 7000, 5, 'Out of Stock');