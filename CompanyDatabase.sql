-- create database
CREATE DATABASE company_db;
USE company_db;
-- create department table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
-- create employee table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    salary INT,
    country VARCHAR(30) DEFAULT 'India',
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
-- insert data
INSERT INTO departments
VALUES (1, 'IT'),
    (2, 'HR');
INSERT INTO employees (name, salary, dept_id)
VALUES ('Amit', 30000, 1),
    ('Ravi', 25000, 2),
    ('Neha', 28000, 1);