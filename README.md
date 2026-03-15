# 🎓 University Course Management System (SQL Project)

## 📌 Project Overview
The **University Course Management System** is a relational database project designed to manage academic information within a university.  
This project demonstrates the use of **SQL database design, data manipulation, and complex queries** to handle student enrollments, courses, instructors, and departments.

The system allows efficient storage and retrieval of data related to:
- Students
- Courses
- Instructors
- Departments
- Enrollments

The project also demonstrates the implementation of **advanced SQL concepts** such as joins, subqueries, aggregation, window functions, and case expressions.

---

# 🗄️ Database Structure

The database contains **five main tables**:

## 1️⃣ Students
Stores information about students enrolled in the university.

| Column | Description |
|------|-------------|
| studentid | Unique student identifier |
| firstname | Student first name |
| lastname | Student last name |
| email | Student email address |
| birthdate | Date of birth |
| enrollmentdate | Date of enrollment |

---

## 2️⃣ Courses
Contains information about courses offered by the university.

| Column | Description |
|------|-------------|
| courseid | Unique course identifier |
| coursename | Name of the course |
| departmentid | Department offering the course |
| credits | Number of course credits |

---

## 3️⃣ Instructors
Stores information about university instructors.

| Column | Description |
|------|-------------|
| instructorid | Unique instructor identifier |
| firstname | Instructor first name |
| lastname | Instructor last name |
| email | Instructor email |
| departmentid | Department where instructor works |
| salary | Instructor salary |

---

## 4️⃣ Enrollments
Tracks which students are enrolled in which courses.

| Column | Description |
|------|-------------|
| enrollmentid | Unique enrollment ID |
| studentid | Student identifier |
| courseid | Course identifier |
| enrollmentdate | Date of enrollment |

---

## 5️⃣ Departments
Contains information about academic departments.

| Column | Description |
|------|-------------|
| departmentid | Unique department ID |
| departmentname | Name of department |

---

# 🔗 Entity Relationships

The tables are connected using **foreign key relationships**:

- `courses.departmentid → departments.departmentid`
- `instructors.departmentid → departments.departmentid`
- `enrollments.studentid → students.studentid`
- `enrollments.courseid → courses.courseid`

This ensures **data integrity and proper relational structure**.

---

# 📊 Sample Data

The database contains realistic sample data:

| Table | Number of Records |
|------|------------------|
| Students | 50+ |
| Courses | 15+ |
| Instructors | 15+ |
| Enrollments | 60+ |
| Departments | 10 |

---

# ⚙️ SQL Concepts Used

This project demonstrates several important SQL concepts:

- Database Creation
- Table Design
- Primary Keys
- Foreign Keys
- Auto Increment
- NOT NULL Constraints
- UNIQUE Constraints
- Data Insertion
- CRUD Operations
- Joins
- Subqueries
- Aggregate Functions
- Window Functions
- CASE Expressions
- Date Functions

---

# 🧠 Queries Implemented

The project includes multiple SQL queries such as:

1. CRUD operations on tables  
2. Retrieve students enrolled after a specific year  
3. Retrieve courses offered by a specific department  
4. Count students enrolled in each course  
5. Find students enrolled in multiple specific courses  
6. Find students enrolled in either of two courses  
7. Calculate average credits of courses  
8. Find maximum salary of instructors in a department  
9. Count students in each department  
10. INNER JOIN for students and courses  
11. LEFT JOIN to retrieve all students with courses  
12. Subquery for courses with more than 10 students  
13. Extract year from enrollment date  
14. Concatenate instructor names  
15. Running total of enrollments using window functions  
16. Label students as **Senior** or **Junior** based on enrollment year  

---

# 💻 Technologies Used

- **MySQL**
- **SQL**
- **Relational Database Design**

---

# 📂 Project Structure
university-course-management
│
├── university_management.sql
└── README.md


---

# 🚀 How to Run the Project

1. Install **MySQL** or **MySQL Workbench**
2. Create a new database
3. Run the SQL script provided in the project
4. Execute the queries to retrieve and analyze the data

---

# 📈 Learning Outcomes

Through this project, the following skills were developed:

- Relational database design
- SQL query writing
- Data relationships using foreign keys
- Advanced SQL query techniques
- Data analysis using SQL

---

# 📜 Author

**Kunj Mistry**

---

# ⭐ Acknowledgment

This project was developed as part of an academic SQL database assignment to demonstrate understanding of relational database concepts and SQL query implementation.
