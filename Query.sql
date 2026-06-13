-- =========================
-- 🗄️ DATABASE SCHEMA
-- =========================

-- USERS TABLE
CREATE TABLE Users (
  user_id SERIAL PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  role VARCHAR(30) NOT NULL,
  phone_number VARCHAR(20)
);

-- MATCHES TABLE
CREATE TABLE Matches (
  match_id SERIAL PRIMARY KEY,
  fixture VARCHAR(100) NOT NULL,
  tournament_category VARCHAR(50) NOT NULL,
  base_ticket_price DECIMAL(10,2) NOT NULL,
  match_status VARCHAR(20) NOT NULL
);

-- BOOKINGS TABLE
CREATE TABLE Bookings (
  booking_id INT PRIMARY KEY,
  user_id INT REFERENCES Users(user_id),
  match_id INT REFERENCES Matches(match_id),
  seat_number VARCHAR(20),
  payment_status VARCHAR(20),
  total_cost DECIMAL(10,2) NOT NULL
);

-- =========================
-- 🌱 SEED DATA
-- =========================

-- USERS DATA
INSERT INTO Users (user_id, full_name, email, role, phone_number) VALUES
(1, 'Tanvir Rahman', 'tanvir@mail.com', 'Football Fan', '+8801711111111'),
(2, 'Asif Haque', 'asif@mail.com', 'Football Fan', '+8801722222222'),
(3, 'Sajjad Rahman', 'sajjad@mail.com', 'Ticket Manager', '+8801733333333'),
(4, 'Tanvir Haque', 'tanvir2@mail.com', 'Football Fan', '+8801711111122'),
(5, 'Jannat Ara', 'jannat@mail.com', 'Football Fan', NULL);

-- MATCHES DATA
INSERT INTO Matches (match_id, fixture, tournament_category, base_ticket_price, match_status) VALUES
(101, 'Real Madrid vs Barcelona', 'Champions League', 150.00, 'Available'),
(102, 'Man City vs Liverpool', 'Premier League', 120.00, 'Selling Fast'),
(103, 'Bayern Munich vs PSG', 'Champions League', 130.00, 'Available'),
(104, 'AC Milan vs Inter Milan', 'Serie A', 90.00, 'Sold Out'),
(105, 'Juventus vs Roma', 'Serie A', 80.00, 'Available');

-- BOOKINGS DATA
INSERT INTO Bookings (booking_id, user_id, match_id, seat_number, payment_status, total_cost) VALUES
(501, 1, 101, 'A-12', 'Confirmed', 150.00),
(502, 1, 102, 'B-04', 'Confirmed', 120.00),
(503, 2, 101, 'A-13', 'Confirmed', 150.00),
(504, 2, 101, NULL, NULL, 150.00),
(505, 3, 102, 'C-20', 'Pending', 120.00);


-- =========================
-- SOLVE THE QUESTION
-- =========================

-- Query 1: Retrieve all upcoming football matches belonging to the 'Champions League' where the match status is 'Available'.
SELECT match_id, fixture, base_ticket_price FROM matches WHERE match_status = 'Available' AND tournament_category = 'Champions League';

-- Query 2: Search for all users whose full names start with 'Tanvir' or contain the phrase 'Haque' (case-insensitive).
SELECT user_id, full_name, email FROM users WHERE full_name ILIKE 'tanvir%' OR full_name ILIKE '%haque%';

-- Query 3: Retrieve all booking records where the payment status is missing (NULL), replacing the empty result with 'Action Required'.
SELECT booking_id, user_id, match_id, COALESCE(payment_status, 'Action Required') AS payment_status FROM bookings WHERE payment_status IS NULL;