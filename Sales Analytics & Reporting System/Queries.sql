-- 1. View complete sales data
SELECT *
FROM sales;
-- 2. Calculate total revenue for each sale
SELECT sale_id,
    product_name,
    quantity,
    price,
    (quantity * price) AS total_amount
FROM sales;
-- 3. Total revenue by product
SELECT product_name,
    SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY product_name;
-- 4. Revenue by category
SELECT category,
    SUM(quantity * price) AS category_revenue
FROM sales
GROUP BY category;
-- 5. Region-wise sales performance
SELECT region,
    SUM(quantity * price) AS region_revenue
FROM sales
GROUP BY region;
-- 6. Monthly sales report
SELECT MONTH(sale_date) AS sale_month,
    SUM(quantity * price) AS monthly_revenue
FROM sales
GROUP BY MONTH(sale_date);
-- 7. High value sales only
SELECT *
FROM sales
WHERE (quantity * price) > 50000;
-- 8. Performance classification using CASE
SELECT product_name,
    SUM(quantity * price) AS total_revenue,
    CASE
        WHEN SUM(quantity * price) >= 100000 THEN 'Excellent'
        WHEN SUM(quantity * price) >= 50000 THEN 'Good'
        ELSE 'Average'
    END AS performance_level
FROM sales
GROUP BY product_name;
-- 9. Top selling product
SELECT product_name,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 1;
-- 10. Low performing products
SELECT product_name,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY product_name
HAVING revenue < 20000;