-- 1. View all guests
SELECT *
FROM guests;
-- 2. View all rooms
SELECT *
FROM rooms;
-- 3. Guest booking details
SELECT g.guest_name,
    r.room_type,
    b.check_in,
    b.check_out
FROM bookings b
    JOIN guests g ON b.guest_id = g.guest_id
    JOIN rooms r ON b.room_id = r.room_id;
-- 4. Payment details with guest name
SELECT g.guest_name,
    p.amount,
    p.payment_mode,
    p.payment_date
FROM payments p
    JOIN bookings b ON p.booking_id = b.booking_id
    JOIN guests g ON b.guest_id = g.guest_id;
-- 5. Total revenue
SELECT SUM(amount) AS total_revenue
FROM payments;
-- 6. Rooms currently booked
SELECT *
FROM rooms
WHERE status = 'Booked';
-- 7. Guests from Delhi
SELECT *
FROM guests
WHERE city = 'Delhi';
-- 8. Highest paid staff
SELECT staff_name,
    salary
FROM staff
WHERE salary = (
        SELECT MAX(salary)
        FROM staff
    );
-- 9. Update room status
UPDATE rooms
SET status = 'Available'
WHERE room_id = 103;
-- 10. Delete old guest record
DELETE FROM guests
WHERE guest_id = 5;