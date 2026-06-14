# ⚽ Football Ticket Booking System

## 📖 Project Overview

This project is a PostgreSQL-based Football Ticket Booking System designed to manage football fans, tournament matches, and ticket booking transactions. The database structure follows proper relational database design principles and maintains referential integrity through primary and foreign key relationships.

---

## 🗄️ Database Schema

The database contains three tables:

### Users

Stores information about football fans and ticket managers.

| Column       | Description                               |
| ------------ | ----------------------------------------- |
| user_id      | Unique identifier for each user           |
| full_name    | User's full name                          |
| email        | User's email address                      |
| role         | User role (Football Fan / Ticket Manager) |
| phone_number | User contact number                       |

### Matches

Stores football match information and ticket availability.

| Column              | Description                      |
| ------------------- | -------------------------------- |
| match_id            | Unique identifier for each match |
| fixture             | Competing teams                  |
| tournament_category | Tournament name                  |
| base_ticket_price   | Base ticket price                |
| match_status        | Ticket availability status       |

### Bookings

Stores ticket purchase records.

| Column         | Description               |
| -------------- | ------------------------- |
| booking_id     | Unique booking identifier |
| user_id        | References Users table    |
| match_id       | References Matches table  |
| seat_number    | Reserved seat number      |
| payment_status | Payment status            |
| total_cost     | Final booking cost        |

---

## 🔗 Entity Relationship Diagram (ERD)

The database follows the relationships below:

### One-to-Many Relationship

* One User can create multiple Bookings.

### Many-to-One Relationship

* Multiple Bookings can belong to a single Match.

### Logical One-to-One Mapping

* Each booking record connects exactly one user with one match for a specific seat reservation.

The ERD includes:

* Primary Keys (PK)
* Foreign Keys (FK)
* Relationship Cardinality
* Match Status
* Payment Status

---

## 🚀 SQL Features Used

This project demonstrates the following SQL concepts:

* Database Creation
* Table Creation
* Primary Key Constraints
* Foreign Key Constraints
* Data Seeding
* Filtering with `WHERE`
* Pattern Matching using `LIKE` and `ILIKE`
* NULL Handling using `COALESCE`
* `INNER JOIN`
* `LEFT JOIN`
* Aggregate Functions (`AVG`)
* Subqueries
* Sorting with `ORDER BY`
* Pagination using `LIMIT` and `OFFSET`

---

## 📝 Implemented Queries

### Query 1

Retrieve all available matches from the Champions League tournament.

### Query 2

Find users whose names start with **"Tanvir"** or contain **"Haque"**.

### Query 3

Replace missing payment statuses with **"Action Required"**.

### Query 4

Retrieve booking details along with user names and match fixtures using `INNER JOIN`.

### Query 5

Display all users and their booking IDs, including users who have never booked a ticket.

### Query 6

Find bookings where the total cost is greater than the average booking cost.

### Query 7

Retrieve the top 2 most expensive matches while skipping the highest-priced match.

---

## 🎯 Learning Outcomes

Through this assignment, I practiced:

* Relational Database Design
* ERD Modeling
* SQL Query Development
* Table Relationships
* JOIN Operations
* NULL Value Handling
* Aggregate Functions
* Subqueries
* Data Filtering
* Pagination Techniques

---

## 🛠️ Technologies Used

* PostgreSQL
* SQL
* Draw.io (ERD Design)

---

## 👨‍💻 Author

**Ehasun**
MERN Stack Developer & Frontend Developer
