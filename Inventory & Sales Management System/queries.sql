-- 1. View all products
SELECT *
FROM products;
-- 2. View all customers
SELECT *
FROM customers;
-- 3. View all orders
SELECT *
FROM orders;
-- 4. Show order details with customer and product name
SELECT o.order_id,
    c.customer_name,
    p.product_name,
    o.quantity,
    o.order_date
FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    JOIN products p ON o.product_id = p.product_id;
-- 5. Calculate total order value
SELECT o.order_id,
    (o.quantity * p.price) AS total_amount
FROM orders o
    JOIN products p ON o.product_id = p.product_id;
-- 6. Find products with low stock
SELECT *
FROM products
WHERE stock_qty < 30;
-- 7. Total sales by product
SELECT p.product_name,
    SUM(o.quantity) AS total_sold
FROM orders o
    JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name;
-- 8. Customers from specific cities
SELECT *
FROM customers
WHERE city IN ('Delhi', 'Pune');
-- 9. Update stock after sales (manual simulation)
UPDATE products
SET stock_qty = stock_qty - 1
WHERE product_id = 1;
-- 10. Delete an order
DELETE FROM orders
WHERE order_id = 2;