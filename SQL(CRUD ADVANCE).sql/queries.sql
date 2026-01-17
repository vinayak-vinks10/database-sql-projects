/* ===================================================
 Student Course Management - CRUD Operations
 =================================================== */
-- ===================== CREATE =====================
-- Add new student
INSERT INTO students (student_name, email, city, status)
VALUES ('Pooja', 'pooja@gmail.com', 'Bhopal', 'Active');
-- Add new course
INSERT INTO courses (course_name, duration_months, fee)
VALUES ('Machine Learning', 6, 70000);
-- Enroll student into a course
INSERT INTO enrollments (student_id, course_id, enroll_date)
VALUES (5, 2, '2025-01-15');
-- ====================== READ ======================
-- View all students
SELECT *
FROM students;
-- View all courses
SELECT *
FROM courses;
-- View enrollments with student and course details
SELECT s.student_name,
    c.course_name,
    e.enroll_date
FROM enrollments e
    JOIN students s ON e.student_id = s.student_id
    JOIN courses c ON e.course_id = c.course_id;
-- Active students only
SELECT *
FROM students
WHERE status = 'Active';
-- Students from Delhi
SELECT *
FROM students
WHERE city = 'Delhi';
-- ===================== UPDATE =====================
-- Update student city
UPDATE students
SET city = 'Noida'
WHERE student_name = 'Amit';
-- Update course fee
UPDATE courses
SET fee = fee + 5000
WHERE course_name = 'Java Full Stack';
-- Change student status
UPDATE students
SET status = 'Inactive'
WHERE student_id = 3;
-- ===================== DELETE =====================
-- Delete an enrollment
DELETE FROM enrollments
WHERE enrollment_id = 2;
-- Delete inactive students
DELETE FROM students
WHERE status = 'Inactive';
-- ===================== EXTRA READ =====================
-- Count students per course
SELECT c.course_name,
    COUNT(e.student_id) AS total_students
FROM courses c
    LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;
-- Total revenue per course
SELECT c.course_name,
    SUM(c.fee) AS total_revenue
FROM courses c
    JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;