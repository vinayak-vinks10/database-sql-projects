CREATE DATABASE hotel_db;
USE hotel_db;
CREATE TABLE guests (
    guest_id INT PRIMARY KEY AUTO_INCREMENT,
    guest_name VARCHAR(50),
    phone VARCHAR(15),
    city VARCHAR(30)
);
CREATE TABLE rooms (
    room_id INT PRIMARY KEY,
    room_type VARCHAR(30),
    price_per_day INT,
    status VARCHAR(20)
);
CREATE TABLE staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_name VARCHAR(50),
    role VARCHAR(30),
    salary INT
);
CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    guest_id INT,
    room_id INT,
    check_in DATE,
    check_out DATE,
    FOREIGN KEY (guest_id) REFERENCES guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);
CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,
    amount INT,
    payment_date DATE,
    payment_mode VARCHAR(20),
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);
-- guests
INSERT INTO guests (guest_name, phone, city)
VALUES ('Amit', '9876543210', 'Delhi'),
    ('Neha', '9123456789', 'Mumbai'),
    ('Rahul', '9988776655', 'Pune'),
    ('Suman', '9011223344', 'Jaipur'),
    ('Ravi', '8899776655', 'Delhi');
-- rooms
INSERT INTO rooms
VALUES (101, 'Single', 2000, 'Available'),
    (102, 'Double', 3000, 'Available'),
    (103, 'Deluxe', 5000, 'Booked'),
    (104, 'Single', 2000, 'Available'),
    (105, 'Suite', 8000, 'Booked');
-- staff
INSERT INTO staff (staff_name, role, salary)
VALUES ('Ramesh', 'Manager', 50000),
    ('Suresh', 'Receptionist', 25000),
    ('Anita', 'Cleaner', 18000),
    ('Pooja', 'Accountant', 35000);
-- bookings
INSERT INTO bookings (guest_id, room_id, check_in, check_out)
VALUES (1, 103, '2025-01-05', '2025-01-07'),
    (2, 105, '2025-01-06', '2025-01-08'),
    (3, 101, '2025-01-10', '2025-01-12'),
    (4, 102, '2025-01-11', '2025-01-13');
-- payments
INSERT INTO payments (booking_id, amount, payment_date, payment_mode)
VALUES (1, 10000, '2025-01-05', 'Card'),
    (2, 16000, '2025-01-06', 'UPI'),
    (3, 4000, '2025-01-10', 'Cash'),
    (4, 6000, '2025-01-11', 'Card');