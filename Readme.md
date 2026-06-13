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



