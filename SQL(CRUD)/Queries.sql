/* ======================================
 Product Management CRUD Operations
 ====================================== */
-- CREATE
-- Add a new product to the system
INSERT INTO products (product_name, category, price, stock, status)
VALUES ('Keyboard', 'Electronics', 1500, 30, 'Available');
-- READ
-- View all products
SELECT *
FROM products;
-- View only available products
SELECT *
FROM products
WHERE status = 'Available';
-- UPDATE
-- Update product price
UPDATE products
SET price = 52000
WHERE product_name = 'Laptop';
-- Update stock after sales
UPDATE products
SET stock = stock - 2
WHERE product_id = 1;
-- DELETE
-- Delete a product that is discontinued
DELETE FROM products
WHERE product_name = 'Table';
-- EXTRA READ OPERATIONS
-- Products with low stock
SELECT *
FROM products
WHERE stock < 10;
-- Products by category
SELECT *
FROM products
WHERE category = 'Electronics';