***Employee Management System (SQL Project)
>> Overview
This project is a SQL-based Employee Management System designed to demonstrate core database concepts such as table design, triggers, and query optimization.

It simulates real-world business logic where employee salary updates automatically affect company expenses.

>> Features
- Employee data management
- Automatic annual income calculation
- Real-time expense tracking using triggers
- Placement-focused SQL queries

>> Tech Stack
- MySQL
- SQL (DDL, DML, Triggers)


>> Future Improvements

- Add Department table (JOIN operations)
- Implement Attendance system
- Add Bonus calculations
- Use Window Functions (RANK, DENSE_RANK)


This project includes advanced SQL concepts using Window Functions:

- ROW_NUMBER()
- RANK()
- DENSE_RANK()


>>> Multi-Table Relationships

The project now supports multiple tables:

- Employees linked with Departments
- Bonuses linked with Employees
- Foreign key relationships implemented
>>> Advanced Queries
- Multi-table JOINs
- Aggregations with GROUP BY
- Window functions with PARTITION


## 📂 Database Structure

### 👨‍💼 Employees Table
- emp_id (Primary Key)
- emp_name
- emp_salary
- annual_income
- emp_hire_date
- refferal_id

###  Expenses Table
- expenses_name (Primary Key)
- expenses_amount

---

##  Triggers Used

### 1. Before Update
Automatically updates annual income when salary changes.

### 2. After Insert
Adds employee salary to total expenses.

### 3. After Delete
Subtracts employee salary from total expenses.

---

## How to Run

1. Run `schema.sql`
2. Run `sample_data.sql`
3. Run `triggers.sql`
4. Execute queries from `queries.sql`