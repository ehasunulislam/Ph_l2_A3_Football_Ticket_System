# 🗄️ Database Schema (SQL Implementation)

## 1️⃣ Users Table

This table stores user information such as name, email, role, and phone number.

```sql
CREATE TABLE Users (
  user_id SERIAL PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  role VARCHAR(30) NOT NULL,
  phone_number VARCHAR(20)
);
```


## 2️⃣ Matches Table

This table stores information about football matches including fixture details, category, price, and status.

```sql
CREATE TABLE Matches (
  match_id SERIAL PRIMARY KEY,
  fixture VARCHAR(100) NOT NULL,
  tournament_category VARCHAR(50) NOT NULL,
  base_ticket_price DECIMAL(10,2) NOT NULL,
  match_status VARCHAR(20) NOT NULL
);
```

## 3️⃣ Bookings Table

This table stores booking information linking users with matches, including seat details and payment status.

```sql
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    match_id INT REFERENCES matches(match_id),
    seat_number VARCHAR(20),
    payment_status VARCHAR(20),
    total_cost DECIMAL(10,2) NOT NULL
);
```

# 🌱 Database Seed Data

This section contains sample data for testing the database including Users, Matches, and Bookings tables.

---

## 👤 Users Table - Sample Data

```sql
INSERT INTO Users (user_id, full_name, email, role, phone_number) VALUES
(1, 'Tanvir Rahman', 'tanvir@mail.com', 'Football Fan', '+8801711111111'),
(2, 'Asif Haque', 'asif@mail.com', 'Football Fan', '+8801722222222'),
(3, 'Sajjad Rahman', 'sajjad@mail.com', 'Ticket Manager', '+8801733333333'),
(4, 'Jannat Ara', 'jannat@mail.com', 'Football Fan', NULL);
```

## ⚽ Matches Table - Sample Data

```sql
INSERT INTO Matches (match_id, fixture, tournament_category, base_ticket_price, match_status) VALUES
(101, 'Real Madrid vs Barcelona', 'Champions League', 150.00, 'Available'),
(102, 'Man City vs Liverpool', 'Premier League', 120.00, 'Selling Fast'),
(103, 'Bayern Munich vs PSG', 'Champions League', 130.00, 'Available'),
(104, 'AC Milan vs Inter Milan', 'Serie A', 90.00, 'Sold Out'),
(105, 'Juventus vs Roma', 'Serie A', 80.00, 'Available');
```

## 🎟 Bookings Table - Sample Data

```sql
INSERT INTO Bookings (booking_id, user_id, match_id, seat_number, payment_status, total_cost) VALUES
(501, 1, 101, 'A-12', 'Confirmed', 150.00),
(502, 1, 102, 'B-04', 'Confirmed', 120.00),
(503, 2, 101, 'A-13', 'Confirmed', 150.00),
(504, 2, 101, NULL, NULL, 150.00),
(505, 3, 102, 'C-20', 'Pending', 120.00);
```