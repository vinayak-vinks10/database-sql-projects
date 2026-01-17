CREATE DATABASE student_course_db;
USE student_course_db;
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50),
    email VARCHAR(50),
    city VARCHAR(30),
    status VARCHAR(20)
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50),
    duration_months INT,
    fee INT
);
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enroll_date DATE
);
INSERT INTO students (student_name, email, city, status)
VALUES ('Amit', 'amit@gmail.com', 'Delhi', 'Active'),
    ('Neha', 'neha@gmail.com', 'Mumbai', 'Active'),
    ('Rahul', 'rahul@gmail.com', 'Pune', 'Inactive'),
    ('Suman', 'suman@gmail.com', 'Jaipur', 'Active'),
    ('Ravi', 'ravi@gmail.com', 'Delhi', 'Active');
INSERT INTO courses (course_name, duration_months, fee)
VALUES ('Java Full Stack', 6, 45000),
    ('Python Data Science', 8, 60000),
    ('Web Development', 5, 35000),
    ('SQL & Database', 3, 20000);
INSERT INTO enrollments (student_id, course_id, enroll_date)
VALUES (1, 1, '2025-01-05'),
    (1, 4, '2025-01-10'),
    (2, 2, '2025-01-07'),
    (3, 3, '2025-01-08'),
    (4, 1, '2025-01-12');