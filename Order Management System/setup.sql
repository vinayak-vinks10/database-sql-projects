CREATE DATABASE order_db;
USE order_db;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    email VARCHAR(50),
    city VARCHAR(30)
);
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    price INT,
    stock INT
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20)
);
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT
);
INSERT INTO customers (customer_name, email, city)
VALUES ('Amit', 'amit@gmail.com', 'Delhi'),
    ('Neha', 'neha@gmail.com', 'Mumbai'),
    ('Rahul', 'rahul@gmail.com', 'Pune'),
    ('Suman', 'suman@gmail.com', 'Jaipur');
INSERT INTO products (product_name, price, stock)
VALUES ('Laptop', 50000, 10),
    ('Mouse', 500, 100),
    ('Keyboard', 1500, 50),
    ('Chair', 3000, 20);
INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2025-01-10', 'Placed'),
    (2, '2025-01-11', 'Shipped'),
    (3, '2025-01-12', 'Delivered');
INSERT INTO order_items (order_id, product_id, quantity)
VALUES (1, 1, 1),
    (1, 2, 2),
    (2, 3, 1),
    (3, 4, 2);