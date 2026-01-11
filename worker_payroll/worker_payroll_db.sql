CREATE DATABASE worker_payroll_db;
USE worker_payroll_db;
CREATE TABLE workers (
    worker_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(30),
    daily_wage INT,
    status VARCHAR(20)
);
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    worker_id INT,
    days_present INT,
    month VARCHAR(20),
    FOREIGN KEY (worker_id) REFERENCES workers(worker_id)
);
INSERT INTO workers (name, department, daily_wage, status)
VALUES ('Ramesh', 'IT', 1000, 'Active'),
    ('Suresh', 'HR', 800, 'Active'),
    ('Neha', 'Finance', 1200, 'Inactive'),
    ('Amit', 'IT', 900, 'Active');
INSERT INTO attendance (worker_id, days_present, month)
VALUES (1, 22, 'January'),
    (2, 20, 'January'),
    (3, 15, 'January'),
    (4, 25, 'January');