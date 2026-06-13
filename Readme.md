# 🗄️ Database Schema (SQL Implementation)

## 1️⃣ Users Table

This table stores user information such as name, email, role, and phone number.

```sql
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  role VARCHAR(30) NOT NULL,
  phone_number VARCHAR(20)
);

