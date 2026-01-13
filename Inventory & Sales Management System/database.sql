CREATE DATABASE inventory_db;
USE inventory_db;
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price INT,
    stock_qty INT
);
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    city VARCHAR(30)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO products (product_name, category, price, stock_qty)
VALUES ('Laptop', 'Electronics', 50000, 20),
    ('Mouse', 'Electronics', 500, 100),
    ('Chair', 'Furniture', 3000, 50);
INSERT INTO customers (customer_name, city)
VALUES ('Amit', 'Delhi'),
    ('Neha', 'Mumbai'),
    ('Rahul', 'Pune');
INSERT INTO orders (customer_id, product_id, quantity, order_date)
VALUES (1, 1, 1, '2025-01-10'),
    (2, 2, 2, '2025-01-12'),
    (3, 3, 1, '2025-01-15');