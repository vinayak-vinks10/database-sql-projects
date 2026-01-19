/* ==================================================
 Order Management System - CRUD Operations
 ================================================== */
-- ================= CREATE =================
-- Add new customer
INSERT INTO customers (customer_name, email, city)
VALUES ('Pooja', 'pooja@gmail.com', 'Bhopal');
-- Add new product
INSERT INTO products (product_name, price, stock)
VALUES ('Table', 7000, 15);
-- Place new order
INSERT INTO orders (customer_id, order_date, status)
VALUES (4, '2025-01-15', 'Placed');
-- Add items to order
INSERT INTO order_items (order_id, product_id, quantity)
VALUES (4, 2, 3);
-- ================= READ =================
-- View all customers
SELECT *
FROM customers;
-- View all products
SELECT *
FROM products;
-- View orders with customer name
SELECT o.order_id,
    c.customer_name,
    o.order_date,
    o.status
FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id;
-- View order details with product info
SELECT o.order_id,
    p.product_name,
    oi.quantity,
    p.price,
    (oi.quantity * p.price) AS total_price
FROM order_items oi
    JOIN orders o ON oi.order_id = o.order_id
    JOIN products p ON oi.product_id = p.product_id;
-- ================= UPDATE =================
-- Update order status
UPDATE orders
SET status = 'Delivered'
WHERE order_id = 1;
-- Reduce product stock after order
UPDATE products
SET stock = stock - 1
WHERE product_id = 1;
-- ================= DELETE =================
-- Delete order item
DELETE FROM order_items
WHERE order_item_id = 2;
-- Delete cancelled order
DELETE FROM orders
WHERE status = 'Cancelled';
-- ================= EXTRA READ =================
-- Total sales amount per order
SELECT o.order_id,
    SUM(oi.quantity * p.price) AS order_total
FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_id;
-- Orders by status
SELECT *
FROM orders
WHERE status = 'Delivered';