CREATE DATABASE sales_db;
USE sales_db;
CREATE TABLE sales (
    sale_id INT,
    product_name VARCHAR(50),
    category VARCHAR(30),
    region VARCHAR(30),
    sale_date DATE,
    quantity INT,
    price INT
);
INSERT INTO sales
VALUES (
        1,
        'Laptop',
        'Electronics',
        'North',
        '2025-01-05',
        2,
        50000
    ),
    (
        2,
        'Mouse',
        'Electronics',
        'North',
        '2025-01-06',
        5,
        500
    ),
    (
        3,
        'Chair',
        'Furniture',
        'South',
        '2025-01-07',
        3,
        3000
    ),
    (4, 'Table', 'Furniture', 'West', '2025-01-08', 2, 7000),
    (
        5,
        'Mobile',
        'Electronics',
        'East',
        '2025-01-10',
        4,
        20000
    ),
    (
        6,
        'Laptop',
        'Electronics',
        'South',
        '2025-02-05',
        1,
        50000
    ),
    (
        7,
        'Chair',
        'Furniture',
        'North',
        '2025-02-07',
        5,
        3000
    ),
    (
        8,
        'Mobile',
        'Electronics',
        'West',
        '2025-02-10',
        2,
        20000
    ),
    (
        9,
        'Mouse',
        'Electronics',
        'East',
        '2025-02-12',
        10,
        500
    ),
    (
        10,
        'Table',
        'Furniture',
        'South',
        '2025-02-15',
        1,
        7000
    );