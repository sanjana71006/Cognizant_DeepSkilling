-- =============================================
-- ANSI SQL USING MYSQL
-- EXERCISES
-- =============================================

USE EventManagement;


-- =============================================
-- 1. USER UPCOMING EVENTS
-- Show all upcoming events a user is registered
-- for in their city, sorted by date.
-- =============================================

SELECT
    u.full_name,
    e.title,
    e.city,
    e.start_date
FROM Users u
JOIN Registrations r
    ON u.user_id = r.user_id
JOIN Events e
    ON r.event_id = e.event_id
WHERE e.status = 'upcoming'
  AND u.city = e.city
ORDER BY e.start_date;


-- =============================================
-- 2. TOP RATED EVENTS
-- Events with highest average rating and at least
-- 10 feedback submissions.
-- =============================================

SELECT
    e.event_id,
    e.title,
    AVG(f.rating) AS average_rating
FROM Events e
JOIN Feedback f
    ON e.event_id = f.event_id
GROUP BY e.event_id, e.title
HAVING COUNT(f.feedback_id) >= 10
ORDER BY average_rating DESC;


-- =============================================
-- 3. INACTIVE USERS
-- Users who have not registered for any events
-- in the last 90 days.
-- =============================================

SELECT
    u.*
FROM Users u
LEFT JOIN Registrations r
    ON u.user_id = r.user_id
    AND r.registration_date >= CURDATE() - INTERVAL 90 DAY
WHERE r.registration_id IS NULL;


-- =============================================
-- 4. PEAK SESSION HOURS
-- Count sessions scheduled between 10 AM and 12 PM
-- for each event.
-- =============================================

SELECT
    e.event_id,
    e.title,
    COUNT(s.session_id) AS session_count
FROM Events e
LEFT JOIN Sessions s
    ON e.event_id = s.event_id
    AND TIME(s.start_time) >= '10:00:00'
    AND TIME(s.start_time) < '12:00:00'
GROUP BY e.event_id, e.title;


-- =============================================
-- 5. MOST ACTIVE CITIES
-- Top 5 cities with highest number of distinct
-- user registrations.
-- =============================================

SELECT
    u.city,
    COUNT(DISTINCT r.user_id) AS user_count
FROM Users u
JOIN Registrations r
    ON u.user_id = r.user_id
GROUP BY u.city
ORDER BY user_count DESC
LIMIT 5;


-- =============================================
-- 6. EVENT RESOURCE SUMMARY
-- Number of PDFs, images and links uploaded
-- for each event.
-- =============================================

SELECT
    e.event_id,
    e.title,
    COUNT(r.resource_id) AS total_resources,
    SUM(r.resource_type = 'pdf') AS pdf_count,
    SUM(r.resource_type = 'image') AS image_count,
    SUM(r.resource_type = 'link') AS link_count
FROM Events e
LEFT JOIN Resources r
    ON e.event_id = r.event_id
GROUP BY e.event_id, e.title;


-- =============================================
-- 7. LOW FEEDBACK ALERTS
-- Users who gave feedback with rating less than 3.
-- =============================================

SELECT
    u.full_name,
    f.rating,
    f.comments,
    e.title AS event_name
FROM Feedback f
JOIN Users u
    ON f.user_id = u.user_id
JOIN Events e
    ON f.event_id = e.event_id
WHERE f.rating < 3;


-- =============================================
-- 8. SESSIONS PER UPCOMING EVENT
-- Display all upcoming events with count of sessions.
-- =============================================

SELECT
    e.event_id,
    e.title,
    COUNT(s.session_id) AS session_count
FROM Events e
LEFT JOIN Sessions s
    ON e.event_id = s.event_id
WHERE e.status = 'upcoming'
GROUP BY e.event_id, e.title;


-- =============================================
-- 9. ORGANIZER EVENT SUMMARY
-- Number of events created by each organizer
-- along with current status.
-- =============================================

SELECT
    u.user_id,
    u.full_name,
    e.status,
    COUNT(e.event_id) AS event_count
FROM Users u
JOIN Events e
    ON u.user_id = e.organizer_id
GROUP BY u.user_id, u.full_name, e.status;


-- =============================================
-- 10. FEEDBACK GAP
-- Events that had registrations but received
-- no feedback.
-- =============================================

SELECT DISTINCT
    e.event_id,
    e.title
FROM Events e
JOIN Registrations r
    ON e.event_id = r.event_id
LEFT JOIN Feedback f
    ON e.event_id = f.event_id
WHERE f.feedback_id IS NULL;


-- =============================================
-- 11. DAILY NEW USER COUNT
-- Number of users who registered each day
-- in the last 7 days.
-- =============================================

SELECT
    registration_date,
    COUNT(*) AS user_count
FROM Users
WHERE registration_date >= CURDATE() - INTERVAL 6 DAY
GROUP BY registration_date
ORDER BY registration_date;


-- =============================================
-- 12. EVENT WITH MAXIMUM SESSIONS
-- Event(s) with the highest number of sessions.
-- =============================================

SELECT
    e.event_id,
    e.title,
    COUNT(s.session_id) AS session_count
FROM Events e
JOIN Sessions s
    ON e.event_id = s.event_id
GROUP BY e.event_id, e.title
HAVING COUNT(s.session_id) = (
    SELECT MAX(session_count)
    FROM (
        SELECT COUNT(*) AS session_count
        FROM Sessions
        GROUP BY event_id
    ) AS temp
);


-- =============================================
-- 13. AVERAGE RATING PER CITY
-- Average feedback rating of events conducted
-- in each city.
-- =============================================

SELECT
    e.city,
    AVG(f.rating) AS average_rating
FROM Events e
JOIN Feedback f
    ON e.event_id = f.event_id
GROUP BY e.city;


-- =============================================
-- 14. MOST REGISTERED EVENTS
-- Top 3 events based on total registrations.
-- =============================================

SELECT
    e.event_id,
    e.title,
    COUNT(r.registration_id) AS registration_count
FROM Events e
JOIN Registrations r
    ON e.event_id = r.event_id
GROUP BY e.event_id, e.title
ORDER BY registration_count DESC
LIMIT 3;


-- =============================================
-- 15. EVENT SESSION TIME CONFLICT
-- Identify overlapping sessions within the same event.
-- =============================================

SELECT
    s1.event_id,
    s1.session_id AS session1_id,
    s2.session_id AS session2_id,
    s1.title AS session1,
    s2.title AS session2
FROM Sessions s1
JOIN Sessions s2
    ON s1.event_id = s2.event_id
    AND s1.session_id < s2.session_id
WHERE s1.start_time < s2.end_time
  AND s2.start_time < s1.end_time;


-- =============================================
-- 16. UNREGISTERED ACTIVE USERS
-- Users who created an account in the last 30 days
-- but haven't registered for any events.
-- =============================================

SELECT
    u.*
FROM Users u
LEFT JOIN Registrations r
    ON u.user_id = r.user_id
WHERE u.registration_date >= CURDATE() - INTERVAL 30 DAY
  AND r.registration_id IS NULL;


-- =============================================
-- 17. MULTI-SESSION SPEAKERS
-- Speakers handling more than one session.
-- =============================================

SELECT
    speaker_name,
    COUNT(*) AS session_count
FROM Sessions
GROUP BY speaker_name
HAVING COUNT(*) > 1;


-- =============================================
-- 18. RESOURCE AVAILABILITY CHECK
-- Events that do not have any resources uploaded.
-- =============================================

SELECT
    e.event_id,
    e.title
FROM Events e
LEFT JOIN Resources r
    ON e.event_id = r.event_id
WHERE r.resource_id IS NULL;


-- =============================================
-- 19. COMPLETED EVENTS WITH FEEDBACK SUMMARY
-- For completed events, show total registrations
-- and average feedback rating.
-- =============================================

SELECT
    e.event_id,
    e.title,
    COUNT(DISTINCT r.registration_id) AS total_registrations,
    AVG(f.rating) AS average_rating
FROM Events e
LEFT JOIN Registrations r
    ON e.event_id = r.event_id
LEFT JOIN Feedback f
    ON e.event_id = f.event_id
WHERE e.status = 'completed'
GROUP BY e.event_id, e.title;


-- =============================================
-- 20. USER ENGAGEMENT INDEX
-- Number of events attended and feedbacks submitted
-- for each user.
-- =============================================

SELECT
    u.user_id,
    u.full_name,
    COUNT(DISTINCT r.event_id) AS events_attended,
    COUNT(DISTINCT f.feedback_id) AS feedback_count
FROM Users u
LEFT JOIN Registrations r
    ON u.user_id = r.user_id
LEFT JOIN Feedback f
    ON u.user_id = f.user_id
GROUP BY u.user_id, u.full_name;


-- =============================================
-- 21. TOP FEEDBACK PROVIDERS
-- Top 5 users who submitted the most feedback.
-- =============================================

SELECT
    u.user_id,
    u.full_name,
    COUNT(f.feedback_id) AS feedback_count
FROM Users u
JOIN Feedback f
    ON u.user_id = f.user_id
GROUP BY u.user_id, u.full_name
ORDER BY feedback_count DESC
LIMIT 5;


-- =============================================
-- 22. DUPLICATE REGISTRATIONS CHECK
-- Detect users registered more than once
-- for the same event.
-- =============================================

SELECT
    user_id,
    event_id,
    COUNT(*) AS registration_count
FROM Registrations
GROUP BY user_id, event_id
HAVING COUNT(*) > 1;


-- =============================================
-- 23. REGISTRATION TRENDS
-- Month-wise registration count over
-- the past 12 months.
-- =============================================

SELECT
    DATE_FORMAT(registration_date, '%Y-%m') AS month,
    COUNT(*) AS registration_count
FROM Registrations
WHERE registration_date >= CURDATE() - INTERVAL 12 MONTH
GROUP BY DATE_FORMAT(registration_date, '%Y-%m')
ORDER BY month;


-- =============================================
-- 24. AVERAGE SESSION DURATION PER EVENT
-- Average duration of sessions in minutes.
-- =============================================

SELECT
    e.event_id,
    e.title,
    AVG(
        TIMESTAMPDIFF(
            MINUTE,
            s.start_time,
            s.end_time
        )
    ) AS average_duration_minutes
FROM Events e
JOIN Sessions s
    ON e.event_id = s.event_id
GROUP BY e.event_id, e.title;


-- =============================================
-- 25. EVENTS WITHOUT SESSIONS
-- Events that currently have no sessions scheduled.
-- =============================================

SELECT
    e.event_id,
    e.title
FROM Events e
LEFT JOIN Sessions s
    ON e.event_id = s.event_id
WHERE s.session_id IS NULL;